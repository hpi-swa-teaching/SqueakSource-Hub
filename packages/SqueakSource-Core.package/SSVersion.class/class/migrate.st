migration
migrate
	
	self flag: #NeedsReview. "Is this needed any longer? --topa"
	self allInstances do: [ :version |
		version dependencies do: [ :dependency |
			(dependency isKindOf: MCVersionDependency)
				ifTrue: [ dependency become: dependency versionInfo ].
			dependency clearAncestors ].
		version versionInfo ancestors do: [ :each |
			each clearAncestors ] ].