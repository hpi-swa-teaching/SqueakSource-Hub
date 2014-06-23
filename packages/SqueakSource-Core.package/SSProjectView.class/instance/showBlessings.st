testing
showBlessings

	^ self repository blessingsEnabled 
	and: [self showAllTabs 
	and: [self model canBless]].