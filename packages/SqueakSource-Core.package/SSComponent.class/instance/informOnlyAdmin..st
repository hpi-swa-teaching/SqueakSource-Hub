convenience
informOnlyAdmin: aString
	| message |
	message := SSAddLinkComponent
		string: aString
		delimiter: 'administrator'
		url: 'mailto:', self repository superUserEmail first address.
	self call: message