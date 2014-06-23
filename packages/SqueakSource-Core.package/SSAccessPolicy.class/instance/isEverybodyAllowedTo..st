testing
isEverybodyAllowedTo: aSymbol

	aSymbol = self class read ifTrue: [
		^ self allowAllRead or: [ self allowAllWrite ]].
	aSymbol = self class write ifTrue: [
		^ self allowAllWrite].
	^ false