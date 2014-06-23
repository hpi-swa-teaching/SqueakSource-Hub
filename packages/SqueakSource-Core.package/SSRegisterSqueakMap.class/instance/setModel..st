rendering
setModel: aModel
	super setModel: aModel.
	default := (self version propertyIncludes: SSVersion smPackageProperty)
		ifTrue: [ self version ]
		ifFalse: [
			self project versionsSorted
				detect: [ :each | 
					each packageName = self version packageName 
						and: [ each propertyIncludes: SSVersion smPackageProperty ] ]
				ifNone: [ SSVersion new ] ].
	form := SSMember new asRegisterComponent
		addTitle: 'SqueakMap Release for ' , self version fileName; 
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	form onAnswer: [ :value | self answer: value ]