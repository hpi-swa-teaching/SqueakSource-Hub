css-rendering
renderStyleWikiOn: aStream
	aStream 
		nextPutAll: '.wikiheader h1 {';
		nextPutAll: 		'display: none; ';
		nextPutAll: '}';
		nextPutAll: '.wikiheader .list {';
		nextPutAll: 		'margin-top: 5px;';
		nextPutAll: 		'margin-bottom: 10px;';
		nextPutAll: '}';
		nextPutAll: '.wikiheader .listItem {';
		nextPutAll: 		'display: inline;';
		nextPutAll: 		'margin-right: 10px;';
		nextPutAll: '}';
		nextPutAll: '';
		nextPutAll: '.wikicontent p { ';
		nextPutAll: 		'margin: 0px;';
		nextPutAll: 		'margin-bottom: 5px;';
		nextPutAll: '}';
		nextPutAll: '';
		nextPutAll: 	'wikifooter h1 {';
		nextPutAll: 		'display: none;';
		nextPutAll: '}';
		nextPutAll: 	'wikifooter .list:before {';
		nextPutAll: 		'content: "References: ";';
		nextPutAll: 		'font-weight: bold;';
		nextPutAll: '}';
		nextPutAll: 	'wikifooter .list {';
		nextPutAll: 		'margin-top: 10px;';
		nextPutAll: 		'border-top: 1px dotted black;';
		nextPutAll: '}';
		nextPutAll: '.wikifooter .listItem {';
		nextPutAll: 		'display: inline;';
		nextPutAll: 		'margin-right: 10px;';
		nextPutAll: '}';
		space