rendering
renderReleaseOn: html
	self version isRelease ifTrue: [
		html tableRow: [
			html tableData
				with: 'Release:'.
			html tableData: 'This is a release that can be read by anybody.' ] ]