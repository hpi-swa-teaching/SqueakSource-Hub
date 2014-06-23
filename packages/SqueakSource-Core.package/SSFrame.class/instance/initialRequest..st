initialization
initialRequest: aRequest
	| accessPath |
	super initialRequest: aRequest.
	accessPath := self session relativePathFor: aRequest.
	accessPath isEmpty 
		ifFalse: [ | project |
		project := self session projectNamed: (accessPath first copyUpToLast: $.).
		project ~~ nil
			ifTrue: [ | view |
				view := project view.
				accessPath size >= 2
					ifTrue: [ view selectTab: (accessPath at: 2) ].
				^self setComponent: view ].
		accessPath first = 'Projects'
			ifTrue: [ ^self setComponent: (self projectsClass model: self model) ].
		accessPath first = 'Tags'
			ifTrue: [ ^self setComponent: (self tagsClass model: self model) ].
		accessPath first = 'Members'
			ifTrue: [ ^self setComponent: (self membersClass model: self model) ].
		accessPath first = 'Groups'
			ifTrue: [ ^self setComponent: (self groupsClass model: self model) ].
		accessPath first = 'Help'
			ifTrue: [ ^self setComponent: (self helpClass model: self model) ].
 ].