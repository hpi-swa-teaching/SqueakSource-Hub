helper
delete: aSymbolList
	| context |

	context := self buildRequest: 'DELETE' url: aSymbolList.
	
	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
		
	^ context
