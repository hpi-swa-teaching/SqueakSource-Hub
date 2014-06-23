actions
boxStyle
	^String streamContents: [ :stream |
		stream
			nextPutAll: 'width: ';
			nextPutAll: self width greaseString;
			nextPutAll: 'px; ';
			nextPutAll: 'height: ';
			nextPutAll: self height greaseString;
			nextPutAll: 'px; ';
			nextPutAll: 'background-color: ';
			nextPutAll: self value asHTMLColor ]