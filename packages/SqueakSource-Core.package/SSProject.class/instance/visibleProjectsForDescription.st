accessing-descriptions
visibleProjectsForDescription

	^ self repository 
		ifNotNil: [:r | 
			r  visibleProjectsTo: (self session 
				ifNotNil: [:s | s user]
				ifNil:[SSMember anonymousMember])]
		ifNil: [{}].