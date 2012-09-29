module Main
where

import Data.Functor
import Data.IORef
import Foreign
import Foreign.C
import Bindings.GObject

data MyObjPrivate = MyObjPrivate {
  privateInt :: Int,
  privateString :: String
  }
  deriving Show

data MyObj = MyObj {
  parent :: C'GObject,
  private :: StablePtr (IORef MyObjPrivate)
  }

_GObject :: C'GObject
_GObject = undefined

_GObjectClass :: C'GObjectClass
_GObjectClass = undefined

_MyObjPrivatePtr :: StablePtr (IORef MyObjPrivate)
_MyObjPrivatePtr = undefined

_MyObj :: MyObj
_MyObj = undefined

privateOffset :: Int
privateOffset = align (sizeOf _GObject) (alignment _MyObjPrivatePtr)

-- taken from Foreign.Ptr.alignPtr
align :: Int -> Int -> Int
align addr al =
  case rem addr al of
    0 -> addr
    n -> addr + (al - n)

-- some magic to ensure both the parent and private fields are always aligned
instance Storable MyObj where
  sizeOf _ = sz + padding2
    where
    sz = sizeOf _GObject + padding1 + sizeOf _MyObjPrivatePtr
    padding1 = align (sizeOf _GObject) (alignment _MyObjPrivatePtr) - sizeOf _GObject
    padding2 = align sz (alignment _MyObj) - sz
  alignment _ = max (alignment _GObject) (alignment _MyObjPrivatePtr)

-- Should be hidden in a separate module
getPrivate :: Ptr MyObj -> IO (IORef MyObjPrivate)
getPrivate ptr = peekByteOff ptr privateOffset >>= deRefStablePtr

main :: IO ()
main = do
  c'g_type_init

  let classSize = fromIntegral $ sizeOf _GObjectClass
  let instanceSize = fromIntegral $ sizeOf _MyObj

  -- ideally we should free FunPtr's (classInit, instanceInit and finalize) with freeHaskellFunPtr in GClassFinalizeFunc
  -- but they are created only once, so it is ok for the example
  classInit <- mk'GClassInitFunc $ \ptr _ -> do
    let klass = castPtr ptr
    finalize <- mk'GObjectClass_finalize $ \myObj -> do
      priv <- peekByteOff myObj privateOffset :: IO (StablePtr (IORef MyObjPrivate))
      p <- deRefStablePtr priv >>= readIORef
      putStrLn $ "finalize: " ++ show p
      freeStablePtr priv
    poke (p'GObjectClass'finalize klass) finalize

  instanceInit <- mk'GInstanceInitFunc $ \myObj _ -> do
    print "init"
    priv <- newIORef (MyObjPrivate 123 "hello") >>= newStablePtr
    pokeByteOff myObj privateOffset priv

  myObjType <- withCString "MyObj" $ \typeName ->
    c'g_type_register_static_simple c'G_TYPE_OBJECT
                                    typeName
                                    classSize
                                    classInit
                                    instanceSize
                                    instanceInit
                                    0

  -- create instance of MyOb
  myObj1 <- castPtr <$> c'g_object_newv myObjType 0 nullPtr
  myObj2 <- castPtr <$> c'g_object_newv myObjType 0 nullPtr

  p1 <- getPrivate myObj1
  p2 <- getPrivate myObj2
  writeIORef p1 $ MyObjPrivate 321 "!!!"
  writeIORef p1 $ MyObjPrivate 444 "gggg"

  -- delete it
  c'g_object_unref $ castPtr myObj2
  c'g_object_unref $ castPtr myObj1
