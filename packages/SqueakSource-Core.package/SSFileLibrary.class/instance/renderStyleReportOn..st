css-rendering
renderStyleReportOn: aStream

	aStream 
		nextPutAll: '.report .ascending a:before {';
		nextPutAll: 		'font-family: FontAwesome;';
		nextPutAll: 		'font-weight: normal;';
		nextPutAll: 		'font-style: normal;';
		nextPutAll: 		'display: inline-block;';
		nextPutAll: 		'text-decoration: inherit;';
		nextPutAll: 		'content: "\f0d8\00A0";';
		nextPutAll: '}';
		nextPutAll: '.report .descending a:before {';
		nextPutAll: 		'font-family: FontAwesome;';
		nextPutAll: 		'font-weight: normal;';
		nextPutAll: 		'font-style: normal;';
		nextPutAll: 		'display: inline-block;';
		nextPutAll: 		'text-decoration: inherit;';
		nextPutAll: 		'content: "\f0d7\00A0";';
		nextPutAll: '}';
		nextPutAll: '.report tr {';
		nextPutAll: 		'padding: 0.3ex 1ex;';
		nextPutAll: '}';
		space

