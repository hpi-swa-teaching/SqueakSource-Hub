actions
callOnView: aComponent
	| announcement |
	announcement := SSVersionViewCallAnnoucement component: aComponent.
	self announcer announce: announcement