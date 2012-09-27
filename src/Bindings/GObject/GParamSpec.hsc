#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-GParamSpec.html>

module Bindings.GObject.GParamSpec where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation

#opaque_t GParamSpec
#opaque_t GParamSpecClass

#cinline G_TYPE_IS_PARAM , <GType> -> <gboolean>
#cinline G_PARAM_SPEC , Ptr a -> Ptr <GParamSpec>
#cinline G_IS_PARAM_SPEC , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_CLASS , Ptr a -> Ptr <GParamSpecClass>
#cinline G_IS_PARAM_SPEC_CLASS , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_GET_CLASS , Ptr a -> Ptr <GParamSpecClass>
#cinline G_PARAM_SPEC_TYPE , Ptr a -> <GType>
#cinline G_PARAM_SPEC_TYPE_NAME , Ptr a -> IO (Ptr <gchar>)
#cinline G_PARAM_SPEC_VALUE_TYPE , Ptr a -> <GType>

#integral_t GParamFlags

#num G_PARAM_READABLE
#num G_PARAM_WRITABLE
#num G_PARAM_CONSTRUCT
#num G_PARAM_CONSTRUCT_ONLY
#num G_PARAM_LAX_VALIDATION
#num G_PARAM_STATIC_NAME
#num G_PARAM_STATIC_NICK
#num G_PARAM_STATIC_BLURB

#num G_PARAM_READWRITE
#num G_PARAM_STATIC_STRINGS
#num G_PARAM_MASK
#num G_PARAM_USER_SHIFT

#ccall g_param_spec_ref , Ptr <GParamSpec> -> IO (Ptr <GParamSpec>)
#ccall g_param_spec_unref , Ptr <GParamSpec> -> IO ()
#ccall g_param_spec_sink , Ptr <GParamSpec> -> IO ()
#ccall g_param_spec_ref_sink , Ptr <GParamSpec> -> IO (Ptr <GParamSpec>)
#ccall g_param_value_set_default , Ptr <GParamSpec> -> Ptr <GValue> -> IO ()
#ccall g_param_value_defaults , Ptr <GParamSpec> -> Ptr <GValue> -> IO <gboolean>
#ccall g_param_value_validate , Ptr <GParamSpec> -> Ptr <GValue> -> IO <gboolean>
#ccall g_param_value_convert , Ptr <GParamSpec> -> Ptr <GValue> -> Ptr <GValue> -> <gboolean> -> IO <gboolean>
#ccall g_param_values_cmp , Ptr <GParamSpec> -> Ptr <GValue> -> Ptr <GValue> -> IO <gint>
#ccall g_param_spec_get_name , Ptr <GParamSpec> -> IO (Ptr <gchar>)
#ccall g_param_spec_get_nick , Ptr <GParamSpec> -> IO (Ptr <gchar>)
#ccall g_param_spec_get_blurb , Ptr <GParamSpec> -> IO (Ptr <gchar>)
#ccall g_param_spec_get_qdata , Ptr <GParamSpec> -> <GQuark> -> IO <gpointer>
#ccall g_param_spec_set_qdata , Ptr <GParamSpec> -> <GQuark> -> <gpointer> -> IO ()
#ccall g_param_spec_set_qdata_full , Ptr <GParamSpec> -> <GQuark> -> <gpointer> -> <GDestroyNotify> -> IO ()
#ccall g_param_spec_steal_qdata , Ptr <GParamSpec> -> <GQuark> -> IO <gpointer>
#ccall g_param_spec_get_redirect_target , Ptr <GParamSpec> -> IO (Ptr <GParamSpec>)
#ccall g_param_spec_internal , <GType> -> Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GParamFlags> -> IO <gpointer>

#starttype GParamSpecTypeInfo
#field instance_size , <guint16>
#field n_preallocs , <guint16>
#field instance_init , FunPtr (Ptr <GParamSpec> -> IO ())
#field value_type , <GType>
#field finalize , FunPtr (Ptr <GParamSpec> -> IO ())
#field value_set_default , FunPtr (Ptr <GParamSpec> -> Ptr <GValue> -> IO ())
#field value_validate , FunPtr (Ptr <GParamSpec> -> Ptr <GValue> -> IO <gboolean>)
#field values_cmp , FunPtr (Ptr <GParamSpec> -> Ptr <GValue> -> Ptr <GValue> -> IO <gint>)
#stoptype

#ccall g_param_type_register_static , Ptr <gchar> -> Ptr <GParamSpecTypeInfo> -> IO <GType>

#opaque_t GParamSpecPool

#ccall g_param_spec_pool_insert , Ptr <GParamSpecPool> -> Ptr <GParamSpec> -> <GType> -> IO ()
#ccall g_param_spec_pool_remove , Ptr <GParamSpecPool> -> Ptr <GParamSpec> -> IO ()
#ccall g_param_spec_pool_lookup , Ptr <GParamSpecPool> -> Ptr <gchar> -> <GType> -> <gboolean> -> IO (Ptr <GParamSpec>)
#ccall g_param_spec_pool_list , Ptr <GParamSpecPool> -> <GType> -> Ptr <guint> -> IO (Ptr (Ptr <GParamSpec>))
#ccall g_param_spec_pool_list_owned , Ptr <GParamSpecPool> -> <GType> -> IO (Ptr <GList>)

