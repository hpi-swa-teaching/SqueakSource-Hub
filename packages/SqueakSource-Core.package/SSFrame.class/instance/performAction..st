private
performAction: aSymbol

	(self component respondsTo: aSymbol)
		ifTrue: [self component perform: aSymbol]
		ifFalse: [self perform: aSymbol].