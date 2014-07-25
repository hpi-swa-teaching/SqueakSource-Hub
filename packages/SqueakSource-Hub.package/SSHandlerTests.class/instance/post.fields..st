helper
post: aSymbolList fields: aDictionary
	| requestUrl request context postFields |
	
	requestUrl := WAUrl new
		addAllToPath: aSymbolList
		yourself.
	
	request := WARequest method: 'POST' uri: requestUrl pathStringUnencoded.
	postFields := WARequestFields new.
	
	aDictionary keysAndValuesDo: [:key :value | postFields at: key put: value].
	request setBody: (aDictionary asJson).
	request setPostFields: postFields.
	
	context := WARequestContext request: request response: WABufferedResponse new.
	
	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
		
	^ context