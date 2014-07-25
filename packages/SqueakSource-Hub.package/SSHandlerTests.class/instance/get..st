helper
get: aSymbolList
	| context |

	context := self buildRequest: 'GET' url: aSymbolList.

	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].

	^ context