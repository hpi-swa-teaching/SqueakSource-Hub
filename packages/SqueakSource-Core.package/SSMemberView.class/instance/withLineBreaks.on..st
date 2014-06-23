rendering
withLineBreaks: aString on: html
	| stream |
	stream := aString readStream.
	[ stream atEnd ] whileFalse: [
		html html: stream nextLine.
		stream atEnd ifFalse: [ html break ] ]