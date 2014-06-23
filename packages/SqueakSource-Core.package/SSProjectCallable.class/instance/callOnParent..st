as yet unclassified
callOnParent: aComponent
	| announcement |
	announcement := SSProjectViewCallAnnoucement component: aComponent.
	self announcer announce: announcement