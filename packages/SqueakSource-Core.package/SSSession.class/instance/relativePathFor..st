private
relativePathFor: aRequest
	| accessPath |
	accessPath := aRequest uri path.
	^accessPath
		copyFrom: self application basicUrl path size + 1
		to: accessPath size