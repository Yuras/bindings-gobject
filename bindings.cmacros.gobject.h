
#ifndef __BINDINGS_CMACROS_GOBJECT_H__
#define __BINDINGS_CMACROS_GOBJECT_H__

#include <bindings.cmacros.h>

#undef BC_GOBJECT_NOTCLASSED
#define BC_GOBJECT_NOTCLASSED(prefix,object,CamelCase) \
    BC_INLINE_(prefix##_TYPE_##object,GType) \
    BC_INLINE1(prefix##_##object,void*,CamelCase*) \
    BC_INLINE1(prefix##_IS_##object,void*,gboolean) \

#undef BC_GOBJECT
#define BC_GOBJECT(prefix,object,CamelCase) \
    BC_GOBJECT_NOTCLASSED(prefix,object,CamelCase) \
    BC_INLINE1(prefix##_##object##_CLASS,void*,CamelCase##Class*) \
    BC_INLINE1(prefix##_IS_##object##_CLASS,void*,gboolean) \
    BC_INLINE1(prefix##_##object##_GET_CLASS,void*,CamelCase##Class*) \

#endif
