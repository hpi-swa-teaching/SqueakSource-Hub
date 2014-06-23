css-rendering
renderStyleToolbarOn: aStream
	aStream 
		nextPutAll: '#sstoolbar {';
		nextPutAll: 		'float: right;';
		nextPutAll: '}';
		
		nextPutAll: '#sstoolbar a {';
		nextPutAll: 		'text-decoration: none;';
		nextPutAll: 		'color: black;';
		nextPutAll: 		'text-shadow: white 0 1px 0;';
		nextPutAll: 		'border: none;';
		nextPutAll: 		'padding: 0px 1em 0px;';
		nextPutAll: '}';
		
		nextPutAll: '#sstoolbar a:hover {';
		nextPutAll: 		'border: none;';
		nextPutAll: 		'color: '; nextPutAll: self styleColor asHTMLColor; nextPutAll: ';';
		nextPutAll: '}';
		space