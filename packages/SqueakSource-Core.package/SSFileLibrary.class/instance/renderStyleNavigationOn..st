css-rendering
renderStyleNavigationOn: aStream
	aStream
		nextPutAll: '#navigation {';
		nextPutAll: 		'text-align: right;';
		nextPutAll: 		'width: 20%;';
		nextPutAll: 		'float: right;';
		nextPutAll: 		'position: relative;';
		nextPutAll: 		'margin-left: -22%;';
		nextPutAll: 		'padding-right: 1em';
		nextPutAll: '}';

		nextPutAll: '#navigation .title {';
		nextPutAll: 		'margin-top: 2em;';
		nextPutAll: 		'font-weight: bold;';
		nextPutAll: '}';
		space