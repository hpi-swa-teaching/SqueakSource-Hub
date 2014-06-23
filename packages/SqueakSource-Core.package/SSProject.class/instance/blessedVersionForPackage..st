accessing-versions
blessedVersionForPackage: aPackage
	| list |
	list := self blessedVersionListForPackage: aPackage.
	^ list isEmpty ifFalse: [list last]