// CleaniOS cleans up multiple parts of iOS that have always bothered me.

@interface SBSaturatedIconView : UIImageView
@end

@interface SBIconListPageControl : UIView
@end

// Below should hide the icon on the LockScreen.

%hook SBSaturatedIconView

- (void)viewDidAppear {
	%orig;
	[self setHidden:YES];
}

%end

// Now I wanna hide the annying page dots (especially with dock)

%hook SBIconListPageControl

- (void)viewDidAppear {
	%orig;
	[self setHidden:YES];
}

%end