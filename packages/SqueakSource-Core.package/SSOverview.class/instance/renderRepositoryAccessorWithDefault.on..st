rendering
renderRepositoryAccessorWithDefault: default on: html

	self repository wellKnownName 
		ifNotEmpty: [
			html text: self repository wellKnownName; text: ': '; text: self model id asString printString]
		ifEmpty: [
			html text: default; text: ' '; text: self model fullDirectoryUrl asString printString]
