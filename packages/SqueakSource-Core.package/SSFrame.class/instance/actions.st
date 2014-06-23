accessing
actions

	| controller |
	controller := self component activeComponent.
	^Array streamContents: [:stream |
		stream nextPutAll: super actions.
		(controller respondsTo: #actions)
			ifTrue: [stream nextPutAll: controller actions]]