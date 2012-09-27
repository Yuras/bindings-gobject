#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/GTypeModule.html>

module Bindings.GObject.GTypeModule where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GObject.BaseObjectType
import Bindings.GObject.EnumerationAndFlagTypes
import Bindings.GObject.TypeInformation

#starttype GTypeModule
#field name , Ptr <gchar>
#stoptype

#starttype GTypeModuleClass
#field load , FunPtr (Ptr <GTypeModule> -> IO <gboolean>)
#field unload , FunPtr (Ptr <GTypeModule> -> IO ())
#stoptype

#ccall g_type_module_use , Ptr <GTypeModule> -> IO <gboolean>
#ccall g_type_module_unuse , Ptr <GTypeModule> -> IO ()
#ccall g_type_module_set_name , Ptr <GTypeModule> -> Ptr <gchar> -> IO ()
#ccall g_type_module_register_type , Ptr <GTypeModule> -> <GType> -> Ptr <gchar> -> Ptr <GTypeInfo> -> <GTypeFlags> -> IO <GType>
#ccall g_type_module_add_interface , Ptr <GTypeModule> -> <GType> -> <GType> -> Ptr <GInterfaceInfo> -> IO ()
#ccall g_type_module_register_enum , Ptr <GTypeModule> -> Ptr <gchar> -> Ptr <GEnumValue> -> IO <GType>
#ccall g_type_module_register_flags , Ptr <GTypeModule> -> Ptr <gchar> -> Ptr <GFlagsValue> -> IO <GType>


