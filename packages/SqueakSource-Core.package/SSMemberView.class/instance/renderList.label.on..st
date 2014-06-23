rendering
renderList: aCollection label: aString on: html
	aCollection isEmpty ifFalse: [
		html tableRow: [
			html tableData
				class: 'mediumLabel';
				with: aString.
			html tableData: [
				aCollection
					do: [ :each | 
						html anchor
							callback: [ self call: each view ];
							with: each title ]
					separatedBy: [ html text: ', ' ] ] ] ].