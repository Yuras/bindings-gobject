#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Boxed-Types.html>

module Bindings.GObject.BoxedTypes where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GObject.TypeInformation

#callback GBoxedCopyFunc , <gpointer> -> IO <gpointer>
#callback GBoxedFreeFunc , <gpointer> -> IO ()

#ccall g_boxed_copy , <GType> -> <gconstpointer> -> IO <gpointer>
#ccall g_boxed_free , <GType> -> <gpointer> -> IO ()
#ccall g_boxed_type_register_static , Ptr <gchar> -> <GBoxedCopyFunc> -> <GBoxedFreeFunc> -> IO <GType>
#ccall g_pointer_type_register_static , Ptr <gchar> -> IO <GType>

#cinline G_TYPE_HASH_TABLE , <GType>
#cinline G_TYPE_DATE , <GType>
#cinline G_TYPE_GSTRING , <GType>
#cinline G_TYPE_STRV , <GType>
#cinline G_TYPE_REGEX , <GType>
#cinline G_TYPE_ARRAY , <GType>
#cinline G_TYPE_BYTE_ARRAY , <GType>
#cinline G_TYPE_PTR_ARRAY , <GType>

#synonym_t GStrv , Ptr (Ptr <gchar>)

