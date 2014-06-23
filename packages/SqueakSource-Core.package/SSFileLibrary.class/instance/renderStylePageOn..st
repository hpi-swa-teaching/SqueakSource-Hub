css-rendering
renderStylePageOn: aStream
	aStream 
		nextPutAll: '#page {';
		nextPutAll: 		'padding: 0px;';
		nextPutAll: 		'clear: both;';
		nextPutAll: '}';
	
		nextPutAll: '#page td, #page th {';
		nextPutAll: 		'padding-right: 5px;';
		nextPutAll: 		'vertical-align: top;';
		nextPutAll: '}';
		space