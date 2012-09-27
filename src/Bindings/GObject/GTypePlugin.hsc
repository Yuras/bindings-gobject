#include <bindings.dsl.h>
#include <glib-object.h>

-- | <http://library.gnome.org/devel/gobject/stable/GTypePlugin.html>

module Bindings.GObject.GTypePlugin where
#strict_import
import Bindings.GObject.TypeInformation

#starttype GTypePluginClass
#field use_plugin , <GTypePluginUse>
#field unuse_plugin , <GTypePluginUnuse>
#field complete_type_info , <GTypePluginCompleteTypeInfo>
#field complete_interface_info , <GTypePluginCompleteInterfaceInfo>
#stoptype

#callback GTypePluginUse , Ptr <GTypePlugin> -> IO ()
#callback GTypePluginUnuse , Ptr <GTypePlugin> -> IO ()
#callback GTypePluginCompleteTypeInfo , Ptr <GTypePlugin> -> \
    <GType> -> Ptr <GTypeInfo> -> Ptr <GTypeValueTable> -> IO ()
#callback GTypePluginCompleteInterfaceInfo , Ptr <GTypePlugin> -> \
    <GType> -> <GType> -> Ptr <GInterfaceInfo> -> IO ()

