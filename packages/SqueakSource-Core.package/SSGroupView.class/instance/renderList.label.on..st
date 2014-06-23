rendering
renderList: aCollection label: aString on: html
	aCollection isEmpty ifFalse: [
		html tableRow: [
			html tableData: aString.
			html tableData: [
				aCollection
					do: [ :each | 
						html anchor
							callback: [ self call: each view ];
							with: each printString ]
					separatedBy: [ html text: ', ' ] ] ] ].