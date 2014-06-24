as yet unclassified
memberFromAuthorization
	| authorization repository member |
	authorization := self requestContext request authorization.
	authorization ifNil: [ ^ nil ].

	repository := SSRepository current.
	member := repository memberAt: ((authorization findTokens: ':') first) ifAbsent: [ ^ nil ].
	(member isPasswordValid: (authorization findTokens: ':') last)
		ifTrue: [ ^ member ]
		ifFalse: [ ^ nil ].