*SqueakSource-Hub
includes: anObject
	self isEmpty ifTrue: [ ^ false ].
	self linkedList do: [ :each | (each element = anObject) ifTrue: [ ^ true] ].
	^ false