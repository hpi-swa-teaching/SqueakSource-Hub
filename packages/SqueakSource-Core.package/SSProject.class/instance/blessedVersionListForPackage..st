accessing-versions
blessedVersionListForPackage: aPackage
	^ self blessings at: aPackage ifAbsentPut: [OrderedCollection new]