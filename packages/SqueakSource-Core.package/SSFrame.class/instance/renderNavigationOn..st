rendering
renderNavigationOn: html
	
	html unorderedList class: 'nav'; class: 'nav-list';
		with: [
			self renderActionsOn: html.
			self renderAuthenticationOn: html]