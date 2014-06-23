printing-email
printWalkbackOf: aContext on: aStream

	self printStackFrameListStartOn: aStream.
	aContext errorReportOn: aStream.
	self printStackFrameListEndOn: aStream.