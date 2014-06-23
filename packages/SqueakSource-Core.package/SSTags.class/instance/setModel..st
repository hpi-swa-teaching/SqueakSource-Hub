initialize
setModel: aModel
	| tagActiviy  |
	tagActiviy := aModel tagActiviy.
	maxActivity := tagActiviy sortedElements inject: 0 into: [ :result :assoc |
		result max: assoc value ].
	maxActivity = 0 ifTrue: [ maxActivity := 1 ].
	super setModel: aModel.	