columns
authorColumn: aColumn

	<columnNamed: 'Author' priority: 20>

	aColumn 
		accessor: #author;
		renderer: [ :each :html |
			| author |
			author := each author.
			author 
				ifNil: [ html text: 'unknown' ]
				ifNotNil: [ 
					html anchor
						callback: [ self callOnParent: author view ];
						with: author name ] ]