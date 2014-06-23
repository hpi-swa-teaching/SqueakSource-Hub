actions
deleteAll
    <actionNamed: 'Delete Package' priority: 110 access: #admin>
	<icon: 'trash'>
    | all |
    all := (self project versionsWithPackageName: self version packageName) sorted.
    (self confirmDelete: all)
        ifTrue: [ 
            all do: [ :each | self project deleteVersion: each as: self user ].
            self session save.
            self answer ]