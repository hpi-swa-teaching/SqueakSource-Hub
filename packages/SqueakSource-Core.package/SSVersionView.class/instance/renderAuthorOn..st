rendering
renderAuthorOn: html
	html tableRow: [
		html tableData
			with: 'Author:'.
		html tableData: [
			html anchor
				callback: [ self call: self version author view ];
				with: self version authorString ] ]