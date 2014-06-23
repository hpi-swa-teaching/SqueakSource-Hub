css-rendering
renderStyleTopOn: aStream
	aStream "
		nextPutAll: '#top {';
		nextPutAll: 		'width: 860px;';
		nextPutAll: 		'height: 100px;';
		nextPutAll: 		'background: url(', (self urlOf: #logoPng) greaseString, ') no-repeat;';
		nextPutAll: 		'text-align: right;';
		nextPutAll: '}';
		space"
		nextPutAll:  '#top {';
		nextPutAll: 		'height: 100px;';
		nextPutAll: 		'white-space: nowrap;';
		nextPutAll: 		'text-indent: -9999px;';
		nextPutAll: 		'overflow: hidden;';				
		nextPutAll: 		'background: url(', (self urlOf: #logoPng) greaseString, ') no-repeat;';
		nextPutAll: '}';
		space
