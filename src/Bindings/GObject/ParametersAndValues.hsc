#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Standard-Parameter-and-Value-Types.html>

module Bindings.GObject.ParametersAndValues where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation
import Bindings.GObject.GParamSpec

#opaque_t GParamSpecBoolean
#cinline G_IS_PARAM_SPEC_BOOLEAN , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_BOOLEAN , Ptr a -> Ptr <GParamSpecBoolean>
#cinline G_TYPE_PARAM_BOOLEAN , <GType>
#cinline G_VALUE_HOLDS_BOOLEAN , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_boolean , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gboolean> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_boolean , Ptr <GValue> -> <gboolean> -> IO ()
#ccall g_value_get_boolean , Ptr <GValue> -> IO <gboolean>

#cinline G_IS_PARAM_SPEC_CHAR , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_CHAR , Ptr a -> Ptr <GParamSpecChar>
#opaque_t GParamSpecChar
#cinline G_TYPE_PARAM_CHAR , <GType>
#cinline G_VALUE_HOLDS_CHAR , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_char , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gint8> -> <gint8> -> <gint8> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_char , Ptr <GValue> -> <gchar> -> IO ()
#ccall g_value_get_char , Ptr <GValue> -> IO <gchar>

#cinline G_IS_PARAM_SPEC_UCHAR , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_UCHAR , Ptr a -> Ptr <GParamSpecUChar>
#opaque_t GParamSpecUChar
#cinline G_TYPE_PARAM_UCHAR , <GType>
#cinline G_VALUE_HOLDS_UCHAR , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_uchar , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <guint8> -> <guint8> -> <guint8> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_uchar , Ptr <GValue> -> <guchar> -> IO ()
#ccall g_value_get_uchar , Ptr <GValue> -> IO <guchar>

#cinline G_IS_PARAM_SPEC_INT , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_INT , Ptr a -> Ptr <GParamSpecInt>
#opaque_t GParamSpecInt
#cinline G_TYPE_PARAM_INT , <GType>
#cinline G_VALUE_HOLDS_INT , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_int , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gint> -> <gint> -> <gint> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_int , Ptr <GValue> -> <gint> -> IO ()
#ccall g_value_get_int , Ptr <GValue> -> IO <gint>

#cinline G_IS_PARAM_SPEC_UINT , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_UINT , Ptr a -> Ptr <GParamSpecUInt>
#opaque_t GParamSpecUInt
#cinline G_TYPE_PARAM_UINT , <GType>
#cinline G_VALUE_HOLDS_UINT , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_uint , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <guint> -> <guint> -> <guint> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_uint , Ptr <GValue> -> <guint> -> IO ()
#ccall g_value_get_uint , Ptr <GValue> -> IO <guint>

#cinline G_IS_PARAM_SPEC_LONG , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_LONG , Ptr a -> Ptr <GParamSpecLong>
#opaque_t GParamSpecLong
#cinline G_TYPE_PARAM_LONG , <GType>
#cinline G_VALUE_HOLDS_LONG , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_long , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <glong> -> <glong> -> <glong> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_long , Ptr <GValue> -> <glong> -> IO ()
#ccall g_value_get_long , Ptr <GValue> -> IO <glong>

#cinline G_IS_PARAM_SPEC_ULONG , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_ULONG , Ptr a -> Ptr <GParamSpecULong>
#opaque_t GParamSpecULong
#cinline G_TYPE_PARAM_ULONG , <GType>
#cinline G_VALUE_HOLDS_ULONG , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_ulong , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gulong> -> <gulong> -> <gulong> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_ulong , Ptr <GValue> -> <gulong> -> IO ()
#ccall g_value_get_ulong , Ptr <GValue> -> IO <gulong>

#cinline G_IS_PARAM_SPEC_INT64 , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_INT64 , Ptr a -> Ptr <GParamSpecInt64>
#opaque_t GParamSpecInt64
#cinline G_TYPE_PARAM_INT64 , <GType>
#cinline G_VALUE_HOLDS_INT64 , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_int64 , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gint64> -> <gint64> -> <gint64> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_int64 , Ptr <GValue> -> <gint64> -> IO ()
#ccall g_value_get_int64 , Ptr <GValue> -> IO <gint64>

#cinline G_IS_PARAM_SPEC_UINT64 , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_UINT64 , Ptr a -> Ptr <GParamSpecUInt64>
#opaque_t GParamSpecUInt64
#cinline G_TYPE_PARAM_UINT64 , <GType>
#cinline G_VALUE_HOLDS_UINT64 , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_uint64 , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <guint64> -> <guint64> -> <guint64> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_uint64 , Ptr <GValue> -> <guint64> -> IO ()
#ccall g_value_get_uint64 , Ptr <GValue> -> IO <guint64>

#cinline G_IS_PARAM_SPEC_FLOAT , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_FLOAT , Ptr a -> Ptr <GParamSpecFloat>
#opaque_t GParamSpecFloat
#cinline G_TYPE_PARAM_FLOAT , <GType>
#cinline G_VALUE_HOLDS_FLOAT , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_float , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gfloat> -> <gfloat> -> <gfloat> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_float , Ptr <GValue> -> <gfloat> -> IO ()
#ccall g_value_get_float , Ptr <GValue> -> IO <gfloat>

#cinline G_IS_PARAM_SPEC_DOUBLE , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_DOUBLE , Ptr a -> Ptr <GParamSpecDouble>
#opaque_t GParamSpecDouble
#cinline G_TYPE_PARAM_DOUBLE , <GType>
#cinline G_VALUE_HOLDS_DOUBLE , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_double , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gdouble> -> <gdouble> -> <gdouble> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_double , Ptr <GValue> -> <gdouble> -> IO ()
#ccall g_value_get_double , Ptr <GValue> -> IO <gdouble>

#cinline G_IS_PARAM_SPEC_ENUM , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_ENUM , Ptr a -> Ptr <GParamSpecEnum>
#opaque_t GParamSpecEnum
#cinline G_TYPE_PARAM_ENUM , <GType>
#cinline G_VALUE_HOLDS_ENUM , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_enum , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GType> -> <gint> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_enum , Ptr <GValue> -> <gint> -> IO ()
#ccall g_value_get_enum , Ptr <GValue> -> IO <gint>

#cinline G_IS_PARAM_SPEC_FLAGS , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_FLAGS , Ptr a -> Ptr <GParamSpecFlags>
#opaque_t GParamSpecFlags
#cinline G_TYPE_PARAM_FLAGS , <GType>
#cinline G_VALUE_HOLDS_FLAGS , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_flags , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GType> -> <guint> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_flags , Ptr <GValue> -> <guint> -> IO ()
#ccall g_value_get_flags , Ptr <GValue> -> IO <guint>

#cinline G_IS_PARAM_SPEC_STRING , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_STRING , Ptr a -> Ptr <GParamSpecString>
#opaque_t GParamSpecString
#cinline G_TYPE_PARAM_STRING , <GType>
#cinline G_VALUE_HOLDS_STRING , Ptr <GValue> -> <gboolean>

#synonym_t gchararray , Ptr <gchar>

#ccall g_param_spec_string , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_string , Ptr <GValue> -> Ptr <gchar> -> IO ()
#ccall g_value_set_static_string , Ptr <GValue> -> Ptr <gchar> -> IO ()
#ccall g_value_take_string , Ptr <GValue> -> Ptr <gchar> -> IO ()
#ccall g_value_get_string , Ptr <GValue> -> IO (Ptr <gchar>)
#ccall g_value_dup_string , Ptr <GValue> -> IO (Ptr <gchar>)

#cinline G_IS_PARAM_SPEC_PARAM , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_PARAM , Ptr a -> Ptr <GParamSpecParam>
#opaque_t GParamSpecParam
#cinline G_TYPE_PARAM_PARAM , <GType>
#cinline G_VALUE_HOLDS_PARAM , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_param , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GType> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_param , Ptr <GValue> -> Ptr <GParamSpec> -> IO ()
#ccall g_value_take_param , Ptr <GValue> -> Ptr <GParamSpec> -> IO ()
#ccall g_value_get_param , Ptr <GValue> -> IO (Ptr <GParamSpec>)
#ccall g_value_dup_param , Ptr <GValue> -> IO (Ptr <GParamSpec>)

#cinline G_IS_PARAM_SPEC_BOXED , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_BOXED , Ptr a -> Ptr <GParamSpecBoxed>
#opaque_t GParamSpecBoxed
#cinline G_TYPE_PARAM_BOXED , <GType>
#cinline G_VALUE_HOLDS_BOXED , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_boxed , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GType> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_boxed , Ptr <GValue> -> <gconstpointer> -> IO ()
#ccall g_value_set_static_boxed , Ptr <GValue> -> <gconstpointer> -> IO ()
#ccall g_value_take_boxed , Ptr <GValue> -> <gconstpointer> -> IO ()
#ccall g_value_get_boxed , Ptr <GValue> -> IO <gpointer>
#ccall g_value_dup_boxed , Ptr <GValue> -> IO <gpointer>

#cinline G_IS_PARAM_SPEC_POINTER , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_POINTER , Ptr a -> Ptr <GParamSpecPointer>
#opaque_t GParamSpecPointer
#cinline G_TYPE_PARAM_POINTER , <GType>
#cinline G_VALUE_HOLDS_POINTER , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_pointer , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_pointer , Ptr <GValue> -> <gpointer> -> IO ()
#ccall g_value_get_pointer , Ptr <GValue> -> IO <gpointer>

#cinline G_IS_PARAM_SPEC_OBJECT , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_OBJECT , Ptr a -> Ptr <GParamSpecObject>
#opaque_t GParamSpecObject
#cinline G_TYPE_PARAM_OBJECT , <GType>
#cinline G_VALUE_HOLDS_OBJECT , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_object , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GType> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_set_object , Ptr <GValue> -> <gpointer> -> IO ()
#ccall g_value_take_object , Ptr <GValue> -> <gpointer> -> IO ()
#ccall g_value_get_object , Ptr <GValue> -> IO <gpointer>
#ccall g_value_dup_object , Ptr <GValue> -> IO <gpointer>

#cinline G_IS_PARAM_SPEC_UNICHAR , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_UNICHAR , Ptr a -> Ptr <GParamSpecUnichar>
#opaque_t GParamSpecUnichar
#cinline G_TYPE_PARAM_UNICHAR , <GType>

#ccall g_param_spec_unichar , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gunichar> -> <GParamFlags> -> IO (Ptr <GParamSpec>)

#cinline G_IS_PARAM_SPEC_VALUE_ARRAY , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_VALUE_ARRAY , Ptr a -> Ptr <GParamSpecValueArray>
#opaque_t GParamSpecValueArray
#cinline G_TYPE_PARAM_VALUE_ARRAY , <GType>

#ccall g_param_spec_value_array , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> Ptr <GParamSpec> -> <GParamFlags> -> IO (Ptr <GParamSpec>)

#cinline G_IS_PARAM_SPEC_OVERRIDE , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_OVERRIDE , Ptr a -> Ptr <GParamSpecOverride>
#opaque_t GParamSpecOverride
#cinline G_TYPE_PARAM_OVERRIDE , <GType>

#ccall g_param_spec_override , Ptr <gchar> -> Ptr <GParamSpec> -> IO (Ptr <GParamSpec>)

#cinline G_IS_PARAM_SPEC_GTYPE , Ptr a -> <gboolean>
#cinline G_PARAM_SPEC_GTYPE , Ptr a -> Ptr <GParamSpecGType>
#opaque_t GParamSpecGType
#cinline G_TYPE_PARAM_GTYPE , <GType>
#cinline G_VALUE_HOLDS_GTYPE , Ptr <GValue> -> <gboolean>

#ccall g_param_spec_gtype , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <GType> -> <GParamFlags> -> IO (Ptr <GParamSpec>)
#ccall g_value_get_gtype , Ptr <GValue> -> IO <GType>
#ccall g_value_set_gtype , Ptr <GValue> -> <GType> -> IO ()

