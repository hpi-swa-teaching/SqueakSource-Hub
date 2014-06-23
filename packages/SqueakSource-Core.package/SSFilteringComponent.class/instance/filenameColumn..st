columns
filenameColumn: aColumn

	<columnNamed: 'Filename' priority: 10>

	aColumn 
		accessor: #fileName;
		renderer: [ :each :html | 
			html anchor
				callback: [ self callOnParent: (SSVersionView 
					project: self model 
					version: each 
					announcer: self announcer) ];
				with: each fileName ]