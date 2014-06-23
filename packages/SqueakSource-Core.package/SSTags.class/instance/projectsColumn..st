columns
projectsColumn: aColumn

	<columnNamed: 'Projects' priority: 30 >
	
	aColumn 
		accessor: #yourself;
		renderer: [ :each :html | 
			html table
				class: 'activityTable';
				with: [
					html tableRow: [
						html tableData
							style: 'background-color: ', (Color activity: (self model tagActiviy occurrencesOf: each) / maxActivity) asHTMLColor;
							with: [ html space; space; space ] ] ] ];
		sorter: [ :a : b | a maxActivity > b maxActivity ]