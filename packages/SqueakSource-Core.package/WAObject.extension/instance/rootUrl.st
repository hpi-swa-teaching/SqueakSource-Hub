*SqueakSource-Core-Model-convenience
rootUrl

	| url |
	url := self application url.
	^ url host isEmptyOrNil 
		ifFalse: [url]
		ifTrue: ["failsafe"
			self completeUrlFromRequest: url]