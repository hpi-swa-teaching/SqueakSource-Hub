actions
move: versions

	| target |
	(self project isMember: self session user allowedTo: SSAccessPolicy move for: self version)
		ifFalse: [
			^ self project developersCanMove
				ifTrue: [ self inform: 'Only developers and admins can move versions!' ]
				ifFalse: [ self inform: 'Only admins can move versions!' ] ].
	target :=  self call: ((SSSimpleObjectChooser 
		model: self writableProjectsForUser
		heading: 'Select the project to move the following versions to')
			infoBlock: [:html |
				html unorderedList: [
					versions asSortedCollection do: [ :each | 
						html listItem: [html text: each fileName]]]];
			yourself).
	target ifNil: [ ^ self ].
	self move: versions to: target.
