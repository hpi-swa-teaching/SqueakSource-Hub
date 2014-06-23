rendering
renderFilenameOn: html
	html tableRow: [
		html tableData
			with: 'File:'.
		html tableData: [
			html anchor
				url: (self version url: self project);
				with: self version fileName ] ]
