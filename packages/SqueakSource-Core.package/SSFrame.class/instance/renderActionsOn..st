rendering
renderActionsOn: html
	self renderMenu: 'Actions' do: [
		self actions pairsDo: [:description :selector |
			self renderMenuItem: [
				selector isSymbol 
					ifTrue: [ html anchor
							callback: [self performAction: selector ];
							with: [self renderActionDescription: description on: html]]
					ifFalse: [ html anchor
							url: selector;
							with: [self renderActionDescription: description on: html]]]
				 on: html]
		] on: html