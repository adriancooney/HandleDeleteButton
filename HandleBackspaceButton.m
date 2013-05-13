#import <objc/runtime.h>

typedef void (^DeleteFn)(void);
static char const * const deleteFnKey = "deleteFnKey";

@interface UITextField (HandleDelete)
    @property (copy, nonatomic) DeleteFn deleteFn;
    -(void) handleDeleteButton: (DeleteFn) fn;
@end

