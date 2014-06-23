rendering
renderContentOn: html
	html break.
	batchedList batch isEmpty
		ifTrue: [ html emphasis: 'No feed available' ]
		ifFalse: [ self renderFeedListingOn: html ]