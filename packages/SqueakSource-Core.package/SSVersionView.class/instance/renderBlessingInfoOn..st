rendering
renderBlessingInfoOn: html
	| blessed |
	
	((self repository blessingsEnabled) and: [self project canBless]) ifFalse: [^ self].
	
	blessed := self project blessedVersionForPackage: self version package.
	blessed ifNotNil: [
		blessed = self version
			ifTrue: [ html strong: 'This is the currently blessed version for package ', blessed package printString ]
			ifFalse: [ html string: 'The currently blessed version of package ', blessed package printString, ' is ', blessed fileName ] ]