rendering
renderPackageList: aCollection label: aString on: html
	aCollection isEmpty 
		ifTrue: [ ^self ]. 
	html tableRow: [
		html tableData
			with: aString.
		html tableData: [
			aCollection 
				do: [ :each |
					self renderFilename: each name
						of: ( self project versionAt: each name, '.mcz' )
						on: html ]
				separatedBy: [ html text: ', ' ] ] ]