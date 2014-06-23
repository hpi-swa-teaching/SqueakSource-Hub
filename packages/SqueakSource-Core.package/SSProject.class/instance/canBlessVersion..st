testing
canBlessVersion: aVersion
	| previous |
	previous := self blessedVersionForPackage: aVersion package.
	^ previous isNil or: [aVersion hasAncestor: previous project: self]