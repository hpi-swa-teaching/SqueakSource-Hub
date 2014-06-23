css
stylesheetCss

	style ifNil: [ style := String streamContents: [ :stream |
			self renderStyleOn: stream]].
	^ style