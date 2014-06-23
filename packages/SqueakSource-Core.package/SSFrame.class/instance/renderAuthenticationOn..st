rendering
renderAuthenticationOn: html
	self session isValidUser 
		ifTrue: [
			self renderMenu: self user do: [
				self
					renderMenuItem: [
						html anchor
							callback: [ self logout ];
							with: [self renderLogoutDescriptionOn: html]]
					on: html.
				self 
					renderMenuItem: [
						html anchor
							callback: [ self editMember ];
							with: [html twbsIcon: 'cog'; space; text: 'Edit Account' ]]
					on: html.
				self renderSubMenu: 'My Projects' do: [
					self user projects asSortedCollection do: [ :each |
						self 
							renderMenuItem: [
								html anchor
									callback: [ self showProject: each ];
									with: each title ] 
							on: html ]  ] on: html.
				self renderSubMenu: 'Favorites' do: [
					self user favorites asSortedCollection do: [ :each |
						self 
							renderMenuItem: [
								html anchor
									callback: [ self showProject: each ];
									with: each title ] 
							on: html ]  ] on: html  ] on: html ]
		ifFalse: [
			self renderMenu: 'Authentication' do: [
				self 
					renderMenuItem: [
						html anchor
							callback: [ self login ];
							with: [self renderLoginDescriptionOn: html] ] 
					on: html ] on: html ]