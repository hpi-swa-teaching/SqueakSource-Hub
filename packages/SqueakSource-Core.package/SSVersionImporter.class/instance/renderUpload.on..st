rendering
renderUpload: anInteger on: html
	html tableRow: [
		html tableData
			with: anInteger greaseString, ':'.
		html tableData: [
			html fileUpload
				callback: [ :file |
					(file notNil and: [ file rawContents notEmpty ])
						ifTrue: [ self uploadFile: file ] ] ] ]