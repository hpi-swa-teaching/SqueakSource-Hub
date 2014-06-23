css-rendering
renderWindowOn: aStream
	
	aStream 
		nextPutAll: '#window-titlebar {';
		nextPutAll: 		'background-color: '; nextPutAll: self styleColor muchLighter asHTMLColor; nextPutAll: ';';
		nextPutAll: 		'margin-bottom: 10px;';
		nextPutAll: 		'width: 100%;';
		nextPutAll: '}';
		
		nextPutAll: 	'#window-title {';
		nextPutAll: 		'text-align: right;';
		nextPutAll: 		'width: 66%;';
		nextPutAll: 	'}';
	
		nextPutAll: 	'#window-close {';
		nextPutAll: 		'text-align: right;';
		nextPutAll: '}';
		space