#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-The-Base-Object-Type.html>

module Bindings.GObject.BaseObjectType where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation
import Bindings.GObject.GParamSpec
import Bindings.GObject.Closures

#gobject G , OBJECT , GObject

#starttype GObjectConstructParam
#field pspec , Ptr <GParamSpec>
#field value , Ptr <GValue>
#stoptype

#callback GObjectGetPropertyFunc , Ptr <GObject> -> <guint> -> Ptr <GValue> -> Ptr <GParamSpec> -> IO ()
#callback GObjectSetPropertyFunc , Ptr <GObject> -> <guint> -> Ptr <GValue> -> Ptr <GParamSpec> -> IO ()
#callback GObjectFinalizeFunc , Ptr <GObject> -> IO ()

#cinline G_TYPE_IS_OBJECT , <GType> -> <gboolean>
#cinline G_OBJECT_TYPE , Ptr a -> <GType>
#cinline G_OBJECT_TYPE_NAME , Ptr a -> IO (Ptr <gchar>)
#cinline G_OBJECT_CLASS_TYPE , Ptr a -> IO <GType>
#cinline G_OBJECT_CLASS_NAME , Ptr a -> IO (Ptr <gchar>)

#ccall g_object_class_install_property , Ptr <GObjectClass> -> <guint> -> Ptr <GParamSpec> -> IO ()
#ccall g_object_class_find_property , Ptr <GObjectClass> -> Ptr <gchar> -> IO (Ptr <GParamSpec>)
#ccall g_object_class_list_properties , Ptr <GObjectClass> -> Ptr <guint> -> IO (Ptr (Ptr <GParamSpec>))
#ccall g_object_class_override_property , Ptr <GObjectClass> -> <guint> -> Ptr <gchar> -> IO ()
#ccall g_object_interface_install_property , <gpointer> -> Ptr <GParamSpec> -> IO ()
#ccall g_object_interface_find_property , <gpointer> -> Ptr <gchar> -> IO (Ptr <GParamSpec>)
#ccall g_object_interface_list_properties , <gpointer> -> Ptr <guint> -> IO (Ptr (Ptr <GParamSpec>))
#ccall g_object_newv , <GType> -> <guint> -> Ptr <GParameter> -> IO <gpointer>

#starttype GParameter
#field name , Ptr <gchar>
#field value , <GValue>
#stoptype

#ccall g_object_ref , <gpointer> -> IO <gpointer>
#ccall g_object_unref , <gpointer> -> IO ()
#ccall g_object_ref_sink , <gpointer> -> IO <gpointer>

#starttype GInitiallyUnowned
#stoptype

#starttype GInitiallyUnownedClass
#stoptype

#cinline G_TYPE_INITIALLY_UNOWNED , IO <GType>

#ccall g_object_is_floating , <gpointer> -> IO <gboolean>
#ccall g_object_force_floating , Ptr <GObject> -> IO ()

#callback GWeakNotify , <gpointer> -> Ptr <GObject> -> IO ()

#ccall g_object_weak_ref , Ptr <GObject> -> <GWeakNotify> -> <gpointer> -> IO ()
#ccall g_object_weak_unref , Ptr <GObject> -> <GWeakNotify> -> <gpointer> -> IO ()
#ccall g_object_add_weak_pointer , Ptr <GObject> -> Ptr <gpointer> -> IO ()
#ccall g_object_remove_weak_pointer , Ptr <GObject> -> Ptr <gpointer> -> IO ()

#callback GToggleNotify , <gpointer> -> Ptr <GObject> -> <gboolean> -> IO ()

#ccall g_object_add_toggle_ref , Ptr <GObject> -> <GToggleNotify> -> <gpointer> -> IO ()
#ccall g_object_remove_toggle_ref , Ptr <GObject> -> <GToggleNotify> -> <gpointer> -> IO ()
#ccall g_object_notify , Ptr <GObject> -> Ptr <gchar> -> IO ()
#ccall g_object_freeze_notify , Ptr <GObject> -> IO ()
#ccall g_object_thaw_notify , Ptr <GObject> -> IO ()
#ccall g_object_get_data , Ptr <GObject> -> Ptr <gchar> -> IO <gpointer>
#ccall g_object_set_data , Ptr <GObject> -> Ptr <gchar> -> <gpointer> -> IO ()
#ccall g_object_set_data_full , Ptr <GObject> -> Ptr <gchar> -> <gpointer> -> <GDestroyNotify> -> IO ()
#ccall g_object_steal_data , Ptr <GObject> -> Ptr <gchar> -> IO <gpointer>
#ccall g_object_get_qdata , Ptr <GObject> -> <GQuark> -> IO <gpointer>
#ccall g_object_set_qdata , Ptr <GObject> -> <GQuark> -> <gpointer> -> IO ()
#ccall g_object_set_qdata_full , Ptr <GObject> -> <GQuark> -> <gpointer> -> <GDestroyNotify> -> IO ()
#ccall g_object_steal_qdata , Ptr <GObject> -> <GQuark> -> IO <gpointer>
#ccall g_object_set_property , Ptr <GObject> -> Ptr <gchar> -> Ptr <GValue> -> IO ()
#ccall g_object_get_property , Ptr <GObject> -> Ptr <gchar> -> Ptr <GValue> -> IO ()
#ccall g_object_watch_closure , Ptr <GObject> -> Ptr <GClosure> -> IO ()
#ccall g_object_run_dispose , Ptr <GObject> -> IO ()

#cinline G_OBJECT_WARN_INVALID_PROPERTY_ID , Ptr <GObject> -> <guint> -> Ptr <GParamSpec> -> IO ()

