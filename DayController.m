/*

Abstract: Controller of a day view.

#import "DayController.h"

@implementation DayController

// Traditional Cocoa controller class that loads the Day.nib file containg the various NSControllers and views 
// that represent a single day on the caldendar month view. The window is not used. The calendar maintains a 
// collection of DayController objects that are reused when the user moves from month to month.

- (id)init
{
    self = [super init];
    if (self) {    
		if (![NSBundle loadNibNamed:@"Day.nib" owner:self]) {
			NSLog(@"failed to load Day.nib");
		}
		else {
			[view removeFromSuperview];
			[window release];
		}
    }
    return self;
}

- (void)dealloc {
	[model release];
    [super dealloc];
}


 // Accessor Methods

- (id)model
{
	return model;
}

- (void)setModel:(id)anObject
{
	[model release];
	model = [anObject retain];
}

- (id)controller
{
	return controller;
}

- (id)view
{
	return view;
}

// Conditionals

// Returns YES if there are no events to display and the event views should be hidden, NO otherwise.
- (BOOL)shouldHideEvents
{
	id events = [eventsController content];
	if ((events == nil) || ([events count] == 0))
		return YES;
	else
		return NO;
}

@end