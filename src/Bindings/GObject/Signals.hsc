#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Signals.html>

module Bindings.GObject.Signals where
#strict_import
import Bindings.GLib
import Bindings.GObject.TypeInformation
import Bindings.GObject.Closures

#starttype GSignalInvocationHint
#field signal_id , <guint>
#field detail , <GQuark>
#field run_type , <GSignalFlags>
#stoptype

#callback GSignalAccumulator , Ptr <GSignalInvocationHint> -> \
    Ptr <GValue> -> Ptr <GValue> -> <gpointer> -> IO <gboolean>

#synonym_t GSignalCMarshaller , <GClosureMarshal>

#callback GSignalEmissionHook , Ptr <GSignalInvocationHint> -> <guint> -> \
    Ptr <GValue> -> <gpointer> -> IO <gboolean>

#integral_t GSignalFlags
#num G_SIGNAL_RUN_FIRST
#num G_SIGNAL_RUN_LAST
#num G_SIGNAL_RUN_CLEANUP
#num G_SIGNAL_NO_RECURSE
#num G_SIGNAL_DETAILED
#num G_SIGNAL_ACTION
#num G_SIGNAL_NO_HOOKS

#integral_t GSignalMatchType
#num G_SIGNAL_MATCH_ID
#num G_SIGNAL_MATCH_DETAIL
#num G_SIGNAL_MATCH_CLOSURE
#num G_SIGNAL_MATCH_FUNC
#num G_SIGNAL_MATCH_DATA
#num G_SIGNAL_MATCH_UNBLOCKED

#starttype GSignalQuery
#field signal_id , <guint>
#field signal_name , Ptr <gchar>
#field itype , <GType>
#field signal_flags , <GSignalFlags>
#field return_type , <GType>
#field n_params , <guint>
#field param_types , Ptr <GType>
#stoptype

#num G_SIGNAL_TYPE_STATIC_SCOPE
#num G_SIGNAL_MATCH_MASK
#num G_SIGNAL_FLAGS_MASK

#ccall g_signal_newv , Ptr <gchar> -> <GType> -> <GSignalFlags> -> \
    Ptr <GClosure> -> <GSignalAccumulator> -> <gpointer> -> \
    <GSignalCMarshaller> -> <GType> -> <guint> -> Ptr <GType> -> IO <guint>
#ccall g_signal_query , <guint> -> Ptr <GSignalQuery> -> IO ()
#ccall g_signal_lookup , Ptr <gchar> -> <GType> -> IO <guint>
#ccall g_signal_name , <guint> -> IO (Ptr <gchar>)
#ccall g_signal_list_ids , <GType> -> Ptr <guint> -> IO (Ptr <guint>)
#ccall g_signal_emitv , Ptr <GValue> -> <guint> -> <GQuark> -> \
    Ptr <GValue> -> IO ()

#cinline g_signal_connect , <gpointer> -> Ptr <gchar> ->  <GCallback> -> <gpointer> -> IO <gulong>
#cinline g_signal_connect_after ,  <gpointer> -> Ptr <gchar> -> <GCallback> -> <gpointer> -> IO <gulong>
#cinline g_signal_connect_swapped , <gpointer> -> Ptr <gchar> -> <GCallback> -> <gpointer> -> IO <gulong>

#ccall g_signal_connect_object , <gpointer> -> Ptr <gchar> -> \
    <GCallback> -> <gpointer> -> <GConnectFlags> -> IO <gulong>

#integral_t GConnectFlags
#num G_CONNECT_AFTER
#num G_CONNECT_SWAPPED

#ccall g_signal_connect_data , <gpointer> -> Ptr <gchar> -> \
    <GCallback> -> <gpointer> -> <GClosureNotify> -> \
    <GConnectFlags> -> IO <gulong>
#ccall g_signal_connect_closure , <gpointer> -> Ptr <gchar> -> \
    Ptr <GClosure> -> <gboolean> -> IO <gulong>
#ccall g_signal_connect_closure_by_id , <gpointer> -> <guint> -> \
    <GQuark> -> Ptr <GClosure> -> <gboolean> -> IO <gulong>
#ccall g_signal_handler_block , <gpointer> -> <gulong> -> IO ()
#ccall g_signal_handler_unblock , <gpointer> -> <gulong> -> IO ()
#ccall g_signal_handler_disconnect , <gpointer> -> <gulong> -> IO ()
#ccall g_signal_handler_find , <gpointer> -> <GSignalMatchType> -> \
    <guint> -> <GQuark> -> Ptr <GClosure> -> <gpointer> -> \
    <gpointer> -> IO <gulong>
#ccall g_signal_handlers_block_matched , <gpointer> -> \
    <GSignalMatchType> -> <guint> -> <GQuark> -> Ptr <GClosure> -> \
    <gpointer> ->  <gpointer> -> IO <guint>
#ccall g_signal_handlers_unblock_matched , <gpointer> -> \
    <GSignalMatchType> -> <guint> -> <GQuark> -> Ptr <GClosure> -> \
    <gpointer> -> <gpointer> -> IO <guint>
#ccall g_signal_handlers_disconnect_matched , <gpointer> -> \
    <GSignalMatchType> -> <guint> -> <GQuark> -> Ptr <GClosure> -> \
    <gpointer> -> <gpointer> -> IO <guint>
#ccall g_signal_handler_is_connected , <gpointer> -> <gulong> -> IO <gboolean>

#cinline g_signal_handlers_block_by_func , <gpointer> -> <gpointer> -> <gpointer> -> IO <guint>
#cinline g_signal_handlers_unblock_by_func , <gpointer> -> <gpointer> -> <gpointer> -> IO <guint>
#cinline g_signal_handlers_disconnect_by_func , <gpointer> -> <gpointer> -> <gpointer> -> IO <guint>

#ccall g_signal_has_handler_pending , <gpointer> -> <guint> ->  <GQuark> -> \
    <gboolean> -> IO <gboolean>
#ccall g_signal_stop_emission , <gpointer> -> <guint> -> <GQuark> -> IO ()
#ccall g_signal_stop_emission_by_name , <gpointer> -> Ptr <gchar> -> IO ()
#ccall g_signal_override_class_closure , <guint> -> <GType> -> \
    Ptr <GClosure> -> IO ()
#ccall g_signal_chain_from_overridden , Ptr <GValue> -> Ptr <GValue> -> IO ()
#ccall g_signal_override_class_handler , Ptr <gchar> -> <GType> -> \
    <GCallback> -> IO ()
#ccall g_signal_add_emission_hook , <guint> -> <GQuark> -> \
    <GSignalEmissionHook> -> <gpointer> -> <GDestroyNotify> -> IO <gulong>
#ccall g_signal_remove_emission_hook , <guint> -> <gulong> -> IO ()
#ccall g_signal_parse_name , Ptr <gchar> -> <GType> -> Ptr <guint> -> \
    Ptr <GQuark> -> <gboolean> -> IO <gboolean>
#ccall g_signal_get_invocation_hint , <gpointer> -> \
    IO (Ptr <GSignalInvocationHint>)
#ccall g_signal_type_cclosure_new , <GType> -> <guint> -> IO (Ptr <GClosure>)
#ccall g_signal_accumulator_true_handled , Ptr <GSignalInvocationHint> -> \
    Ptr <GValue> -> Ptr <GValue> -> <gpointer> -> IO <gboolean>

