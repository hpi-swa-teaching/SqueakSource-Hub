accessing-projects
maxActivity
	^(self visibleProjectsTo: SSMember anonymousMember)
		inject: 1.0
		into: [ :result :each | result max: each activity ]