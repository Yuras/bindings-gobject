
#ifndef __BINDINGS_DSL_GOBJECT_H__
#define __BINDINGS_DSL_GOBJECT_H__

#include <bindings.dsl.h>

#undef hsc_gobject_notclassed
#define hsc_gobject_notclassed(prefix,object,CamelCase) \
    hsc_cinline(prefix##_TYPE_##object,<GType>) \
    hsc_cinline(prefix##_##object,Ptr a -> Ptr <CamelCase>) \
    hsc_cinline(prefix##_IS_##object,Ptr a -> <gboolean>) \

#undef hsc_gobject
#define hsc_gobject(prefix,object,CamelCase) \
    hsc_gobject_notclassed(prefix,object,CamelCase) \
    hsc_cinline(prefix##_##object##_CLASS,Ptr a -> Ptr <CamelCase##Class>) \
    hsc_cinline(prefix##_IS_##object##_CLASS,Ptr a -> <gboolean>) \
    hsc_cinline(prefix##_##object##_GET_CLASS,Ptr a -> Ptr <CamelCase##Class>) \

#endif
