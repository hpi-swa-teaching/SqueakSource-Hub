css-rendering
renderStyleHtmlOn: aStream
	aStream 
		nextPutAll: 'body {';
		nextPutAll:		'margin: 0px;';
		nextPutAll:	 	'padding: 10px;';
		nextPutAll: 		'border: 0px;';
		nextPutAll: 		'background: transparent;';
		nextPutAll: 		'text-align: center;';
		nextPutAll: 		'line-height: 1.2;';  
		nextPutAll: '}';

		nextPutAll: 'body, div, table, tr, td, th, form input, form submit {';
		nextPutAll: 		'font-family: ''Helvetica Neue'', Helvetica, Geneva, Swiss, Arial, sans-serif;';
		nextPutAll: '}';
		nextPutAll: 'label, td.readonly {line-height:24px}';
		nextPutAll: 'table, tr, td, th, form {';
		nextPutAll: 		'margin: 0px;';
		nextPutAll: 		'padding: 0px;';
		nextPutAll: 		'border: 0px;';
		nextPutAll: 		'border-spacing: 0px;';
		nextPutAll: '}';
	
		nextPutAll: 'th {';
		nextPutAll: 		'text-align: left;';
		nextPutAll: '}';
	
		nextPutAll: 'thead tr td {';
		nextPutAll: 		'font-weight: bold;';
		nextPutAll: '}';
	
		nextPutAll: 'code, pre {';
		nextPutAll: 		'white-space: pre;';
		nextPutAll: 		'line-height: 1;';
		nextPutAll: '}';

		nextPutAll: 'input.text {';
		nextPutAll: 		'width: 500px;';
		nextPutAll: '}';

		nextPutAll: 'textarea {';
		nextPutAll: 		'width: 500px;';
		nextPutAll: '}';

		nextPutAll: 'a, a:visited {';
		nextPutAll: 		'color: '; nextPutAll: self styleColor asHTMLColor; nextPutAll: ';';
		nextPutAll: 		'text-decoration: none;';
		nextPutAll: '}';
		
		nextPutAll: 'a:hover {';
		nextPutAll: 		'border-bottom: 1px dotted;';
		nextPutAll: '}';  
		
		nextPutAll: 'form div {';
		nextPutAll:		'border: 1px solid transparent;';
		nextPutAll: '}';
		space