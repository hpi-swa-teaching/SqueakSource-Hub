printing-email
printHeaderForStackFrame: aContext on: aStream
	aStream cr; nextPutAll: aContext fullPrintString	; cr
	