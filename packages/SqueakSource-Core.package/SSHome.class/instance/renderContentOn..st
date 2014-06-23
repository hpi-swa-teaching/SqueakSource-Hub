rendering
renderContentOn: html
	self renderTitleOn: html.
	self renderIntroductionOn: html.

	"non-modular statistics addon"
	(self respondsTo: #renderStatisticsOn:)
		ifTrue: [self renderStatisticsOn: html].

	self session isSuperUser ifTrue: [
		self renderLogOn: html ]
