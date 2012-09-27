#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Enumeration-and-Flag-Types.html>

module Bindings.GObject.EnumerationAndFlagTypes where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation

#opaque_t GEnumClass
#opaque_t GFlagsClass
#cinline G_ENUM_CLASS_TYPE , Ptr <GEnumClass> -> <GType>
#cinline G_ENUM_CLASS_TYPE_NAME , Ptr <GEnumClass> -> Ptr <gchar>
#cinline G_TYPE_IS_ENUM , <GType> -> <gboolean>
#cinline G_ENUM_CLASS , Ptr a -> Ptr <GEnumClass>
#cinline G_IS_ENUM_CLASS , Ptr a -> <gboolean>
#cinline G_TYPE_IS_FLAGS , <GType> -> IO <gboolean>
#cinline G_FLAGS_CLASS , Ptr a -> Ptr <GFlagsClass>
#cinline G_IS_FLAGS_CLASS , Ptr a -> <gboolean>
#cinline G_FLAGS_CLASS_TYPE , Ptr <GFlagsClass> -> <GType>
#cinline G_FLAGS_CLASS_TYPE_NAME , Ptr <GFlagsClass> -> IO (Ptr <gchar>)

#starttype GEnumValue
#field value , <gint>
#field value_name , Ptr <gchar>
#field value_nick , Ptr <gchar>
#stoptype

#starttype GFlagsValue
#field value , <gint>
#field value_name , Ptr <gchar>
#field value_nick , Ptr <gchar>
#stoptype

#ccall g_enum_get_value , Ptr <GEnumClass> -> <gint> -> IO (Ptr <GEnumValue>)
#ccall g_enum_get_value_by_name , Ptr <GEnumClass> -> Ptr <gchar> -> IO (Ptr <GEnumValue>)
#ccall g_enum_get_value_by_nick , Ptr <GEnumClass> -> Ptr <gchar> -> IO (Ptr <GEnumValue>)
#ccall g_flags_get_first_value , Ptr <GFlagsClass> -> <guint> -> IO (Ptr <GFlagsValue>)
#ccall g_flags_get_value_by_name , Ptr <GFlagsClass> -> Ptr <gchar> -> IO (Ptr <GFlagsValue>)
#ccall g_flags_get_value_by_nick , Ptr <GFlagsClass> -> Ptr <gchar> -> IO (Ptr <GFlagsValue>)
#ccall g_enum_register_static , Ptr <gchar> -> Ptr <GEnumValue> -> IO <GType>
#ccall g_flags_register_static , Ptr <gchar> -> Ptr <GFlagsValue> -> IO <GType>
#ccall g_enum_complete_type_info , <GType> -> Ptr <GTypeInfo> -> Ptr <GEnumValue> -> IO ()
#ccall g_flags_complete_type_info , <GType> -> Ptr <GTypeInfo> -> Ptr <GFlagsValue> -> IO ()

