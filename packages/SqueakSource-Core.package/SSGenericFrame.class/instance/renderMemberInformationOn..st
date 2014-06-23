rendering
renderMemberInformationOn: html

	self isValidUser
		ifFalse: [
			self renderNavbarItem: [self renderLoginDescriptionOn: html] with: [self login] on: html]
		ifTrue: [
			self renderNavbarItem: [
				html twbsIcon: 'user'; space; text: self user asString] with: [self editMember] on: html.
			self renderNavbarItem: [html html: '&#x2022;'] with: [] on: html.
			self renderNavbarItem: [self renderLogoutDescriptionOn: html]  with: [self logout] on: html]