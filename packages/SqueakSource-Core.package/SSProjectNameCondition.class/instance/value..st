evaluation
value: aString
	^aString allSatisfy: [ :char | char isLetter or: [ char isDigit  or: [char = $-  or: [ char = $~ ] ] ] ]