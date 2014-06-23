defaults
builder

	^ (WABuilder on: WAXmlCanvas)
		rootClass: WAXmlRoot;
		documentClass: WAXmlDocument;
		yourself