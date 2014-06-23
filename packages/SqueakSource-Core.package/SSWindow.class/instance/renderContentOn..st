rendering
renderContentOn: html
	html table
		with: [
			html tableRow
				id: 'window-titlebar';
				with: [
					html tableData
						id: 'window-title';
						with: title.
					html tableData
						id: 'window-close';
						with: [ self renderCloseButtonOn: html ] ].
			html tableRow
				id: 'window-content';
				with: [
					html tableData
						colSpan: 2;
						with: content ] ]