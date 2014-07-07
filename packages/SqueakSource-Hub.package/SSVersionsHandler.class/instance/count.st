request-handling
count
	<get>
	<path: '/count'>
	<produces: 'text/json'>
	| count projects |
	projects := SSRepository current projects.
	count :=  projects inject: 0  into: [ :a :b | a + (b countVersions: [:c | true]) ].
	^ count asJson