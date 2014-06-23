actions
deleteDependencies
    <actionNamed: 'Delete Dependencies' priority: 120 access: #admin>
	<icon: 'trash'>
    | all |
    all := self project dependentVersionsFor: self version.
    (self confirmDeleteDependents: all)
        ifTrue: [ 
            all do: [ :each | self project deleteVersion: each as: self user ].
            self session save.
            self answer ]