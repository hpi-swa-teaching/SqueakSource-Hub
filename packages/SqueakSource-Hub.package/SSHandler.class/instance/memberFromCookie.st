as yet unclassified
memberFromCookie
	| repository member |

	repository := SSRepository current.
	member := repository memberAt: self loginCookieValue ifAbsent: [^ nil].
	^ (member passwordHash = self passwordCookieValue asNumber)
		ifTrue: [member]
		ifFalse: [nil].