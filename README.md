# HandleDeleteButton
#### A small library to dynamically handle the iOS keyboard delete/backspace button
This is a small library created to dynamically handle the delete/backspace button on the iOS keyboard. It implements the `-(void) deleteBackward` function declared in the UITextField which it inherits from the UITextInput protocol.

## Usage
Simply import the library and the UITextField class inherits a `-(void) handleDeleteButton` function. Provide a callback to this function to handle when the delete button is pressed and your done!

	#import <UIKit/UIKit.h>

	// Import our library
	#import "HandleDeleteButton.h"

	@interface SomeViewController : UIViewController
		@property (weak, nonatomic) UITextField *input;
	@end

	@implementation SomeViewController
	@synthesize input = _input;

	-(void) viewDidLoad {

		[_input handleDeleteButton: ^(void) {
			//Code
			NSLog(@"Delete Button Pressed!");
		}];

	}

	@end



