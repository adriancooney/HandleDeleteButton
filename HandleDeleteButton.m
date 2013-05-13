#import "HandleBackspaceButton.h"

// Implement the HandleDelete category
@implementation UITextField (HandleDelete)
// Tell the compiler that we'll be handling the getter and setter
// method of the deleteFn variable
@dynamic deleteFn;

-(void) handleDeleteButton: (DeleteFn) fn {
    self.deleteFn = fn;
}

// Implement the UITextview deleteBackword method
-(void) deleteBackward {
    if(self.deleteFn != Nil) self.deleteFn();
}

// Create the setter method for the block
- (void) setDeleteFn: (DeleteFn)fn {
  objc_setAssociatedObject(self, deleteFnKey, fn, OBJC_ASSOCIATION_COPY);
}

// Create the getter method for the block
- (DeleteFn)deleteFn {
  return objc_getAssociatedObject(self, deleteFnKey);
}

@end