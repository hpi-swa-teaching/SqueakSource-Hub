rendering
renderContentOn: html
	self model do: [ :each |
		html paragraph: [
			html strong: [
				self renderFilename: each name
					of: (self project versionAt: each name, '.mcz')
					on: html].
			html text: ' (', each date greaseString, ', ', each time greaseString, ')'; break.
			each ancestors size > 1
				ifTrue: [ html strong: 'MERGED ', each ancestorString; break].
			each stepChildren isEmpty ifFalse: [
				html strong: 'BACKPORT '.
				html text: each stepChildrenString; break].
			html withLineBreaks: each message ] ]