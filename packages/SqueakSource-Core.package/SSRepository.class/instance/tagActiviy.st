accessing-tags
tagActiviy
	| activity |
	activity := Bag new.
	self projectsDo: [ :project |
		project tags do: [ :each |
			activity add: each ] ].
	^activity