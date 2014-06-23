actions
renderFilename: aString of: aVersion on: html
	aVersion 
		ifNil: [ html text: aString ]
		ifNotNil: [ 
			(self project isMember: self session user  allowedTo: SSAccessPolicy allowAllRead for: aVersion)
				ifFalse: [ html text: aString ]
				ifTrue: [
					html anchor
						callback: [ self callOnView: (SSVersionView 
							project: self project 
							version: aVersion
							announcer: self announcer) ];
						with: aString ] ]