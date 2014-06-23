rendering
renderStatisticsOn: html
	html tableRow: [
		html tableData
			with:  'Downloads:'.
		html tableData: [
			self version downloadStatistics isEmpty
				ifTrue: [ html text: '0' ]
				ifFalse: [
					self version downloadStatistics associationsDo: [ :assoc |
						html text: assoc key greaseString, ': '.
						html text: assoc value value.
						html break ] ] ] ]