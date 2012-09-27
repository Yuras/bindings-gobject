#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Value-arrays.html>

module Bindings.GObject.ValueArrays where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation

#starttype GValueArray
#field n_values , <guint>
#field values , Ptr <GValue>
#stoptype

#ccall g_value_array_get_nth , Ptr <GValueArray> -> <guint> -> IO (Ptr <GValue>)
#ccall g_value_array_new , <guint> -> IO (Ptr <GValueArray>)
#ccall g_value_array_copy , Ptr <GValueArray> -> IO (Ptr <GValueArray>)
#ccall g_value_array_free , Ptr <GValueArray> -> IO ()
#ccall g_value_array_append , Ptr <GValueArray> -> Ptr <GValue> -> IO (Ptr <GValueArray>)
#ccall g_value_array_prepend , Ptr <GValueArray> -> Ptr <GValue> -> IO (Ptr <GValueArray>)
#ccall g_value_array_insert , Ptr <GValueArray> -> <guint> -> Ptr <GValue> -> IO (Ptr <GValueArray>)
#ccall g_value_array_remove , Ptr <GValueArray> -> <guint> -> IO (Ptr <GValueArray>)
#ccall g_value_array_sort , Ptr <GValueArray> -> <GCompareFunc> -> IO (Ptr <GValueArray>)
#ccall g_value_array_sort_with_data , Ptr <GValueArray> -> <GCompareDataFunc> -> <gpointer> -> IO (Ptr <GValueArray>)

