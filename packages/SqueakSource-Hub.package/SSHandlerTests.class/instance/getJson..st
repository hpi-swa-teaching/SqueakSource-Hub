helper
getJson: aSymbolList
	| context |
	context := self get: aSymbolList.
	^ JSJsonParser parse: (context response contents).