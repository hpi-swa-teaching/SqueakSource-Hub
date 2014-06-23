defaults
defaultTags

	^ self repository
		ifNotNil: [:repo | repo tags collect: [ :each | each -> each name ]]
		ifNil: [#()]