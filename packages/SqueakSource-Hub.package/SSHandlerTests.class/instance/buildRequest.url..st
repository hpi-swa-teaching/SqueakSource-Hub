helper
buildRequest: method url: aSymbolList
	| requestUrl request context |
	
	requestUrl := WAUrl new
		addAllToPath: aSymbolList
		yourself.
	request := WARequest
		method: method uri: requestUrl pathStringUnencoded.
	context := WARequestContext request: request response: WABufferedResponse new.

	^ context
