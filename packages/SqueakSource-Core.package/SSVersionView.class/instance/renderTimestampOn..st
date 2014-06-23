rendering
renderTimestampOn: html
	html tableRow: [
		html tableData
			with: 'Timestamp:'.
		html tableData: self version timestamp ]