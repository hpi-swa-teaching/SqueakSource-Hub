accessing-configs
fixConfig: aConfig
	"SSProject allInstancesDo: [:prj | prj configs do: [:cfg | prj fixConfig: cfg]]"
	aConfig repositories: (aConfig repositories collect: [:repo |
		repo class == MCHttpRepository
			ifTrue: [MCHttpRepository new location: repo description]
			ifFalse: [self flag: #todo. repo copy]]).
	^aConfig