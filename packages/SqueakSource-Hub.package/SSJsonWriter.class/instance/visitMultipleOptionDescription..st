nil
visitMultipleOptionDescription: aDescription
	aDescription useJsonKey
		ifFalse: [ ^super visitMultipleOptionDescription: aDescription ].

	(self object collect: [ :each | each jsonKey ]) jsonOn: stream 