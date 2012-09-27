#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Generic-values.html>

module Bindings.GObject.GenericValues where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation

#cinline G_VALUE_HOLDS , Ptr a -> <GType> -> <gboolean>
#cinline G_VALUE_TYPE , Ptr a -> <GType>
#cinline G_VALUE_TYPE_NAME , Ptr a -> IO (Ptr <gchar>)
#cinline G_TYPE_IS_VALUE , <GType> -> <gboolean>
#cinline G_TYPE_IS_VALUE_ABSTRACT , <GType> -> <gboolean>
#cinline G_IS_VALUE , Ptr a -> <gboolean>

#ccall g_value_init , Ptr <GValue> -> <GType> -> IO (Ptr <GValue>)
#ccall g_value_copy , Ptr <GValue> -> Ptr <GValue> -> IO ()
#ccall g_value_reset , Ptr <GValue> -> IO (Ptr <GValue>)
#ccall g_value_unset , Ptr <GValue> -> IO ()
#ccall g_value_set_instance , Ptr <GValue> -> <gpointer> -> IO ()
#ccall g_value_type_compatible , <GType> -> <GType> -> IO <gboolean>
#ccall g_value_type_transformable , <GType> -> <GType> -> IO <gboolean>
#ccall g_value_transform , Ptr <GValue> -> Ptr <GValue> -> IO <gboolean>

#callback GValueTransform , Ptr <GValue> -> Ptr <GValue> -> IO ()

#ccall g_value_register_transform_func , <GType> -> <GType> -> <GValueTransform> -> IO ()
#ccall g_strdup_value_contents , Ptr <GValue> -> IO (Ptr <gchar>)

