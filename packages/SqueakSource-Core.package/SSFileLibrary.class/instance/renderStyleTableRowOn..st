css-rendering
renderStyleTableRowOn: aStream

	aStream 
		nextPutAll: 'tr.even {';
		nextPutAll: 		'background-color: '; nextPutAll: self styleColor veryMuchLighter asHTMLColor; nextPutAll: ';';
		nextPutAll: '}';

		nextPutAll: 'tr.odd {';
		nextPutAll: '}';

		nextPutAll: '.largeLabel {';
		nextPutAll:		'font-weight: bold';
		nextPutAll: '}';

		nextPutAll: '.mediumLabel {';
		nextPutAll:		'width: 100px;';
		nextPutAll: '}';

		nextPutAll: '.smallLabel {';
		nextPutAll:		'width: 80px;';
		nextPutAll: '}';

		nextPutAll: '.activityTable {';
		nextPutAll:		'margin-left: auto;';
		nextPutAll:		'margin-right: auto;';
		nextPutAll: '}';

		nextPutAll: 'td {';
		nextPutAll: 		'text-align: left;';
		nextPutAll: '}';
		space