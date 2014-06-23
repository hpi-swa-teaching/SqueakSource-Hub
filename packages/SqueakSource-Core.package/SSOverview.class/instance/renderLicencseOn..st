rendering
renderLicencseOn: html

	| license |
	license := self model license.
	(license isNil or: [license first isNil])
		ifTrue: [^self].
	
	html heading level2; with: 'License'.
	html text: 'Code commited to this repository will be automatically under '.
	html anchor
		url: license second;
		with: license first.
	html text: ' license.'