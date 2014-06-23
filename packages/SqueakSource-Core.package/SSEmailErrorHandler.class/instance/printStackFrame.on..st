printing-email
printStackFrame: aContext on: aStream
	self printHeaderForStackFrame: aContext on: aStream.
	self printObject: aContext receiver labelled: 'self' on: aStream.
		
	aContext tempNames withIndexDo: [ :name :index |
		self printObject: (aContext tempAt: index) labelled: name on: aStream].

	self printFooterForStackFrame: aContext on: aStream.