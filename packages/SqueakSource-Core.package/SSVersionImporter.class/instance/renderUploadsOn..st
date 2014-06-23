rendering
renderUploadsOn: html
	html form
		multipart;
		with: [
			html div: [
				html table
					with: [
						1 to: 10 do: [ :each |
							self renderUpload: each on: html ] ].
				html break.
				html submitButton
					callback: [ self answer ];
					text: 'Upload' ] ]