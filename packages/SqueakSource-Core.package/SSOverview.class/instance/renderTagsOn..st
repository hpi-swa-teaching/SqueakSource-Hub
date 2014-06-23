rendering
renderTagsOn: html
	html heading level2; with: 'Tags'.
	self model hasTags
		ifFalse: [ html text: 'This project doesn''t yet have tags.' ]
		ifTrue: [ 
			self model tags
				do: [ :each |
					html anchor
						callback: [ self displayProjectsWithTag: each ];
						with: each name ]
				separatedBy: [ html text: ', ' ] ]