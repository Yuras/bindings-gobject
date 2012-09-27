#include <bindings.dsl.h>
#include <gobject/gvaluecollector.h>

-- | <http://library.gnome.org/devel/gobject/stable/gobject-Varargs-Value-Collection.html>

module Bindings.GObject.Varargs where
#strict_import
import Bindings.GLib

#starttype GTypeCValue
#field v_int , <gint>
#field v_long , <glong>
#field v_int64 , <gint64>
#field v_double , <gdouble>
#field v_pointer , <gpointer>
#stoptype

#num G_VALUE_COLLECT_FORMAT_MAX_LENGTH

