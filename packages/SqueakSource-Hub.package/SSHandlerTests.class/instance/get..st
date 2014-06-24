helper
get: aSymbolList
	| requestUrl request context |
	
	requestUrl := WAUrl new
		addAllToPath: aSymbolList
		yourself.
	request := WARequest
		method: 'GET'
		uri: requestUrl.
	context := WARequestContext request: request response: WABufferedResponse new.
	
	[ handler handle: context ]
			on: WAResponseNotification
			do: [ :notification | ].
		
	^ context
