rendering
renderButtonsOn: html
	html break.
	html form: [
		html div: [
			(self project isMember: self session user allowedTo: SSAccessPolicy admin)
				ifTrue: [
					self version isRelease 
						ifFalse: [
							html submitButton
								class: 'btn';
								callback: [ self releaseCreate ];
								text: 'Create Release' ]
						ifTrue: [
							html submitButton
								class: 'btn';
								callback: [ self releaseRemove ];
								text: 'Remove Release' ].
					html space.
					html submitButton
						class: 'btn';
						callback: [self releaseCreateSqueakMap];
						text: 'SqueakMap Release'].
			
			(self repository blessingsEnabled and: 
			[self project isMember: self session user allowedTo: SSAccessPolicy bless])
				ifTrue: [
					html space.
					(self project isVersionBlessed: self version)
						ifFalse: [
							html submitButton
								class: 'btn';
								callback: [ self bless ];
								text: 'Bless' ]
						ifTrue: [
							html submitButton
								class: 'btn';
								callback: [ self unbless ];
								text: 'Remove Blessing' ] ] ] ]