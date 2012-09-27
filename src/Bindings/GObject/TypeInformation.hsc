#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Type-Information.html>

module Bindings.GObject.TypeInformation where
#strict_import
import Bindings.GLib
import Bindings.GObject.Varargs

#integral_t GType
#opaque_t GTypePlugin

#starttype GValue
#stoptype

#cinline G_TYPE_FUNDAMENTAL , <GType> -> <GType>

#num G_TYPE_FUNDAMENTAL_MAX

#cinline G_TYPE_MAKE_FUNDAMENTAL , <GType> -> <GType>
#cinline G_TYPE_IS_ABSTRACT , <GType> -> <gboolean>
#cinline G_TYPE_IS_DERIVED , <GType> -> <gboolean>
#cinline G_TYPE_IS_FUNDAMENTAL , <GType> -> <gboolean>
#cinline G_TYPE_IS_VALUE_TYPE , <GType> -> <gboolean>
#cinline G_TYPE_HAS_VALUE_TABLE , <GType> -> <gboolean>
#cinline G_TYPE_IS_CLASSED , <GType> -> <gboolean>
#cinline G_TYPE_IS_INSTANTIATABLE , <GType> -> <gboolean>
#cinline G_TYPE_IS_DERIVABLE , <GType> -> <gboolean>
#cinline G_TYPE_IS_DEEP_DERIVABLE , <GType> -> <gboolean>
#cinline G_TYPE_IS_INTERFACE , <GType> -> <gboolean>

#starttype GTypeInterface
#stoptype

#starttype GTypeInstance
#stoptype

#starttype GTypeClass
#stoptype

#starttype GTypeInfo
#field class_size , <guint16>
#field base_init , <GBaseInitFunc>
#field base_finalize , <GBaseFinalizeFunc>
#field class_init , <GClassInitFunc>
#field class_finalize , <GClassFinalizeFunc>
#field class_data , <gconstpointer>
#field instance_size , <guint16>
#field instance_init , <GInstanceInitFunc>
#field value_table , Ptr <GTypeValueTable>
#stoptype

#starttype GTypeFundamentalInfo
#field type_flags , <GTypeFundamentalFlags>
#stoptype

#starttype GInterfaceInfo
#field interface_init , <GInterfaceInitFunc>
#field interface_finalize , <GInterfaceFinalizeFunc>
#field interface_data , <gpointer>
#stoptype

#starttype GTypeValueTable
#field value_init , FunPtr (Ptr <GValue> -> IO ())
#field value_free , FunPtr (Ptr <GValue> -> IO ())
#field value_copy , FunPtr (Ptr <GValue> -> Ptr <GValue> -> IO ())
#field value_peek_pointer , FunPtr (Ptr <GValue> -> IO <gpointer>)
#field collect_format , Ptr <gchar>
#field collect_value , FunPtr (Ptr <GValue> -> <guint> -> Ptr <GTypeCValue> -> <guint> -> IO (Ptr <gchar>))
#field lcopy_format , Ptr <gchar>
#field lcopy_value , FunPtr (Ptr <GValue> -> <guint> -> Ptr <GTypeCValue> -> <guint> -> IO (Ptr <gchar>))
#stoptype

#num G_TYPE_FLAG_RESERVED_ID_BIT
#ccall g_type_init , IO ()
#integral_t GTypeDebugFlags

#num G_TYPE_DEBUG_NONE
#num G_TYPE_DEBUG_OBJECTS
#num G_TYPE_DEBUG_SIGNALS
#num G_TYPE_DEBUG_MASK

#ccall g_type_init_with_debug_flags , <GTypeDebugFlags> -> IO ()
#ccall g_type_name , <GType> -> IO (Ptr <gchar>)
#ccall g_type_qname , <GType> -> IO <GQuark>
#ccall g_type_from_name , Ptr <gchar> -> IO <GType>
#ccall g_type_parent , <GType> -> IO <GType>
#ccall g_type_depth , <GType> -> IO <guint>
#ccall g_type_next_base , <GType> -> <GType> -> IO <GType>
#ccall g_type_is_a , <GType> -> <GType> -> IO <gboolean>
#ccall g_type_class_ref , <GType> -> IO <gpointer>
#ccall g_type_class_peek , <GType> -> IO <gpointer>
#ccall g_type_class_peek_static , <GType> -> IO <gpointer>
#ccall g_type_class_unref , <gpointer> -> IO ()
#ccall g_type_class_peek_parent , <gpointer> -> IO <gpointer>
#ccall g_type_class_add_private , <gpointer> -> <gsize> -> IO ()
#ccall g_type_interface_peek , <gpointer> -> <GType> -> IO <gpointer>
#ccall g_type_interface_peek_parent , <gpointer> -> IO <gpointer>
#ccall g_type_default_interface_ref , <GType> -> IO <gpointer>
#ccall g_type_default_interface_peek , <GType> -> IO <gpointer>
#ccall g_type_default_interface_unref , <gpointer> -> IO ()
#ccall g_type_children , <GType> -> Ptr <guint> -> IO (Ptr <GType>)
#ccall g_type_interfaces , <GType> -> Ptr <guint> -> IO (Ptr <GType>)
#ccall g_type_interface_prerequisites , <GType> -> Ptr <guint> -> IO (Ptr <GType>)
#ccall g_type_set_qdata , <GType> -> <GQuark> -> <gpointer> -> IO ()
#ccall g_type_get_qdata , <GType> -> <GQuark> -> IO <gpointer>
#ccall g_type_query , <GType> -> Ptr <GTypeQuery> -> IO ()

#starttype GTypeQuery
#field type , <GType>
#field type_name , Ptr <gchar>
#field class_size , <guint>
#field instance_size , <guint>
#stoptype

#callback GBaseInitFunc , <gpointer> -> IO ()
#callback GBaseFinalizeFunc , <gpointer> -> IO ()
#callback GClassInitFunc , <gpointer> -> <gpointer> -> IO ()
#callback GClassFinalizeFunc , <gpointer> -> <gpointer> -> IO ()
#callback GInstanceInitFunc , Ptr <GTypeInstance> -> <gpointer> -> IO ()
#callback GInterfaceInitFunc , <gpointer> -> <gpointer> -> IO ()
#callback GInterfaceFinalizeFunc , <gpointer> -> <gpointer> -> IO ()
#callback GTypeClassCacheFunc , <gpointer> -> Ptr <GTypeClass> -> IO <gboolean>

#integral_t GTypeFlags

#num G_TYPE_FLAG_ABSTRACT
#num G_TYPE_FLAG_VALUE_ABSTRACT

#integral_t GTypeFundamentalFlags

#num G_TYPE_FLAG_CLASSED
#num G_TYPE_FLAG_INSTANTIATABLE
#num G_TYPE_FLAG_DERIVABLE
#num G_TYPE_FLAG_DEEP_DERIVABLE

#ccall g_type_register_static , <GType> -> Ptr <gchar> -> Ptr <GTypeInfo> -> <GTypeFlags> -> IO (<GType>)
#ccall g_type_register_static_simple , <GType> -> Ptr <gchar> -> <guint> -> <GClassInitFunc> -> <guint> -> <GInstanceInitFunc> -> <GTypeFlags> -> IO (<GType>)
#ccall g_type_register_dynamic , <GType> -> Ptr <gchar> -> Ptr <GTypePlugin> -> <GTypeFlags> -> IO (<GType>)
#ccall g_type_register_fundamental , <GType> -> Ptr <gchar> -> Ptr <GTypeInfo> -> Ptr <GTypeFundamentalInfo> -> <GTypeFlags> -> IO (<GType>)
#ccall g_type_add_interface_static , <GType> -> <GType> -> Ptr <GInterfaceInfo> -> IO ()
#ccall g_type_add_interface_dynamic , <GType> -> <GType> -> Ptr <GTypePlugin> -> IO ()
#ccall g_type_interface_add_prerequisite , <GType> -> <GType> -> IO ()
#ccall g_type_get_plugin , <GType> -> IO (Ptr <GTypePlugin>)
#ccall g_type_interface_get_plugin , <GType> -> <GType> -> IO (Ptr <GTypePlugin>)
#ccall g_type_fundamental_next , IO (<GType>)
#ccall g_type_add_class_cache_func , <gpointer> -> <GTypeClassCacheFunc> -> IO ()
#ccall g_type_remove_class_cache_func , <gpointer> -> <GTypeClassCacheFunc> -> IO ()
#ccall g_type_class_unref_uncached , <gpointer> -> IO ()
#ccall g_type_add_interface_check , <gpointer> -> <GTypeInterfaceCheckFunc> -> IO ()
#ccall g_type_remove_interface_check , <gpointer> -> <GTypeInterfaceCheckFunc> -> IO ()

#callback GTypeInterfaceCheckFunc , <gpointer> -> <gpointer> -> IO ()

#num G_TYPE_INVALID
#num G_TYPE_NONE
#num G_TYPE_INTERFACE
#num G_TYPE_CHAR
#num G_TYPE_UCHAR
#num G_TYPE_BOOLEAN
#num G_TYPE_INT
#num G_TYPE_UINT
#num G_TYPE_LONG
#num G_TYPE_ULONG
#num G_TYPE_INT64
#num G_TYPE_UINT64
#num G_TYPE_FLOAT
#num G_TYPE_DOUBLE
#num G_TYPE_STRING
#num G_TYPE_POINTER
#num G_TYPE_BOXED
#num G_TYPE_PARAM
#cinline G_TYPE_GTYPE , IO <GType>
#num G_TYPE_RESERVED_GLIB_FIRST
#num G_TYPE_RESERVED_GLIB_LAST
#num G_TYPE_RESERVED_BSE_FIRST
#num G_TYPE_RESERVED_BSE_LAST
#num G_TYPE_RESERVED_USER_FIRST

