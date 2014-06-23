rendering-tools
renderNavbarItem: name with: block on: html

	html listItem: [
		html anchor
			callback: block;
			with: name].