rendering
renderMessageOn: html
	html tableRow: [
		html tableData
			with: 'Message:'.
		html tableData: [
			html withLineBreaks: self version message ] ]