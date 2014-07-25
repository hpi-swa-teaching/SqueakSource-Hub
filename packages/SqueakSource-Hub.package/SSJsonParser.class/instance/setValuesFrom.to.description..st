parsing
setValuesFrom: aDictionary to: anObject description: aDescription
	| readDescriptions inputDescription |
	inputDescription := aDescription select: [:each | each isReadonly not].
	readDescriptions := OrderedCollection new.
	aDictionary keysAndValuesDo: [ :key :value |
		(self descriptionFor: key from: inputDescription) 
			ifNil: [ self missingKey: key ]
			ifNotNilDo: [ :desc | 
				readDescriptions add: desc.
				desc hasOwner 
					ifTrue: [ self pushValue: value desc: desc to: anObject ]
					ifFalse: [ self processValue: value desc: desc to: anObject ] ] ].
	inputDescription do: [ :each |
		each isJsonSerialized ifTrue: [ 
			(readDescriptions includes: each) ifFalse: [ self missingValueFor: each ] ] ]