rendering-tools
renderMenu: aString do: aBlock on: html

	html listItem class: 'nav-header';
		with: aString.
	aBlock value.