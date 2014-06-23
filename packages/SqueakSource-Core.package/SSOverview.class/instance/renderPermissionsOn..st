rendering
renderPermissionsOn: html
	html heading level2; with: 'Permissions'.
	html table
		with: [
			html tableRow: [
				html tableData
					class: 'largeLabel';
					with: 'Global:'.
				html tableData: self model accessPolicy globalRight asCapitalizedPhrase ] ]