actions
back

	<actionNamed: 'Back' priority: 1 condition: #notHome>
	<icon: 'arrow-left'>
	| parent |
	component delegations isEmpty ifTrue: [ ^self ].
	parent := component.
	[ parent := parent delegations first delegate ]
		doWhileFalse: [ parent delegations isEmpty ].
	parent answer: nil