#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Closures.html>

module Bindings.GObject.Closures where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation

#cinline G_CLOSURE_NEEDS_MARSHAL , Ptr <GClosure> -> CInt

#cinline G_CLOSURE_N_NOTIFIERS , Ptr <GClosure> -> <guint>

#cinline G_CCLOSURE_SWAP_DATA , Ptr <GClosure> -> <guint>

#cinline G_CALLBACK , FunPtr a -> <GCallback>

#starttype GClosure
#stoptype

#callback GCallback , IO ()

#callback GClosureNotify , <gpointer> -> Ptr <GClosure> -> IO ()

#starttype GCClosure
#field closure , <GClosure>
#field callback , <gpointer>
#stoptype

#callback GClosureMarshal , Ptr <GClosure> -> Ptr <GValue> -> <guint> -> \
    Ptr <GValue> -> <gpointer> -> <gpointer> -> IO ()

#ccall g_cclosure_new , <GCallback> -> <gpointer> -> \
  <GClosureNotify> -> IO (Ptr <GClosure>)
#ccall g_cclosure_new_swap , <GCallback> -> <gpointer> -> \
  <GClosureNotify> -> IO (Ptr <GClosure>)
#ccall g_closure_ref , Ptr <GClosure> -> IO (Ptr <GClosure>)
#ccall g_closure_sink , Ptr <GClosure> -> IO ()
#ccall g_closure_unref , Ptr <GClosure> -> IO ()
#ccall g_closure_new_simple , <guint> -> <gpointer> -> IO (Ptr <GClosure>)
#ccall g_closure_add_finalize_notifier , Ptr <GClosure> -> \
  <gpointer> -> <GClosureNotify> -> IO ()
#ccall g_closure_remove_finalize_notifier , Ptr <GClosure> -> \
  <gpointer> -> <GClosureNotify> -> IO ()
#ccall g_closure_add_invalidate_notifier , Ptr <GClosure> -> \
  <gpointer> -> <GClosureNotify> -> IO ()
#ccall g_closure_remove_invalidate_notifier , Ptr <GClosure> -> \
  <gpointer> -> <GClosureNotify> -> IO ()
#ccall g_closure_add_marshal_guards , Ptr <GClosure> -> <gpointer> -> \
  <GClosureNotify> -> <gpointer> -> <GClosureNotify> -> IO ()
#ccall g_closure_set_marshal , Ptr <GClosure> -> <GClosureMarshal> -> IO ()
#ccall g_closure_set_meta_marshal , Ptr <GClosure> -> <gpointer> -> \
  <GClosureMarshal> -> IO ()
#ccall g_closure_invalidate , Ptr <GClosure> -> IO ()
#ccall g_closure_invoke , Ptr <GClosure> -> Ptr <GValue> -> \
  <guint> -> Ptr <GValue> -> <gpointer> -> IO ()


