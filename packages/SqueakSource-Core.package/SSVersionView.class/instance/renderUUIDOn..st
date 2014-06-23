rendering
renderUUIDOn: html
	html tableRow: [
		html tableData
			with: 'UUID:'.
		html tableData: self version id ]