rendering
renderMemberBlockFor: aSymbol
	^[ :item :html |
		(item perform: aSymbol)
			do: [ :each | html anchor
				callback: [ self call: each view ];
				with: each printString ]
			separatedBy: [ html text: ', ' ] ]
