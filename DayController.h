/*

Abstract: Controller of a day view.

Disclaimer: IMPORTANT:  This Apple software is supplied to you by Apple

#import <Cocoa/Cocoa.h>

@interface DayController : NSObject
{
	id model;
	id view;
	id controller;
	id window;
	id eventsController;
}
- (id)model;
- (void)setModel:(id)anObject;
- (id)controller;
- (id)view;
- (BOOL)shouldHideEvents;
@end