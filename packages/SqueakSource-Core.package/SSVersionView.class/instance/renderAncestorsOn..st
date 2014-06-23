rendering
renderAncestorsOn: html
	self version ancestors isEmpty ifFalse: [
		html tableRow: [
			html tableData
				with: 'Ancestors:'.
			html tableData: [  
			self version ancestors 
				do: [ :each | 
					self renderFilename: each name
						of: (self project versionAt: each name, '.mcz')
						on: html]
				separatedBy: [html text: ', ']]]].