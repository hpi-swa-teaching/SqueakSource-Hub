rendering
renderList: aCollection label: aString on: html
	aCollection isEmpty ifFalse: [
		html tableRow: [
			html tableData
				class: 'largeLabel';
				with: aString.
			html tableData: [
				aCollection
					do: [ :each |
						html anchor
							callback: [ self callOnParent: each view ];
							with: each printString ]
					separatedBy: [ html text: ', ' ] ] ] ]