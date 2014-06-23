comparing
<= aVersion
	^self packageName = aVersion packageName
		ifFalse: [ self packageName < aVersion packageName ]
		ifTrue: [ self packageVersion > aVersion packageVersion ]
