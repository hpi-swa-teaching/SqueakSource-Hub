rendering
renderEmailOn: html
	self model email isEmptyOrNil ifFalse: [
		html tableRow: [
			html tableData
				class: 'mediumLabel';
				with: 'E-Mail:'.
		 	html tableData: [ 
				html anchor
					url: 'mailto:', self model email;
					with: self model email ] ] ]