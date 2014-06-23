rendering
renderReportOn: html

	self report rows isEmpty
		ifFalse: [ html render: self report ]
		ifTrue: [
			html emphasis: (String streamContents: [ :stream |
				stream nextPutAll: 'No '.
				self searchText isEmptyOrNil ifFalse: [
					stream nextPutAll: 'matching ' ].
				self session isValidUser ifFalse: [
					stream nextPutAll: 'public ' ].
				stream 
					nextPutAll: self heading withFirstCharacterDownshifted;
				 	nextPutAll: ' available']) ]