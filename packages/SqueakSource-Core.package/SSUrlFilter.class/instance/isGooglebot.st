private
isGooglebot
	^(self requestContext request headerAt: 'user-agent' ifAbsent: [ '' ])
		includesSubString: 'Googlebot'