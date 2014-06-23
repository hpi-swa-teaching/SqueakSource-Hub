css-rendering
renderStyleBatchOn: aStream
	aStream 
		nextPutAll: '.batch {';
		nextPutAll: 		'text-align: center;';
		nextPutAll: 		'margin-top: 8px;';
		nextPutAll: '}';
		space.