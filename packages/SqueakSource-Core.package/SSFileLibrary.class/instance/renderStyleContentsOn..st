css-rendering
renderStyleContentsOn: aStream
	aStream 
		nextPutAll: '#contents {';
		nextPutAll: 		'width: 100%;';
		nextPutAll: 		'min-height: 680px;';
		nextPutAll: 		'float: right;';
		nextPutAll: 		'text-align: left;';
		nextPutAll: '}';

		nextPutAll: '#contents h1 {';
		nextPutAll: 		'margin: 0px;';
		nextPutAll: 		'text-align: left;';				
		nextPutAll: 		'font-size: 36px;';
		nextPutAll: '}';
	
		nextPutAll: '#contents h1 a {';
		nextPutAll: 		'text-decoration: none;';
		nextPutAll: 		'border: none;';				
		nextPutAll: '}';
		
		nextPutAll: '#contents h2 {';
		nextPutAll: 		'margin: 1em 0 0.5em;';
		nextPutAll: 		'text-align: left;';				
		nextPutAll: 		'font-size: 21px;';
		nextPutAll: '}';
	
		nextPutAll: '#contents h3 {';
		nextPutAll: 		'margin-bottom: 5px;';
		nextPutAll: 		'text-align: left;';				
		nextPutAll: 		'font-size: 18px;';
		nextPutAll: '}';

		nextPutAll: '#contents hr {';
		nextPutAll: 		'border: none;';
		nextPutAll: 		'border-bottom: 1px dotted black;';
		nextPutAll: '}';
		space.