actions
delete
	<actionNamed: 'Delete Version' priority: 100 access: #admin>
	<icon: 'trash'>
    (self confirm: 'Really delete version "' , self version fileName , '"?')
        ifTrue: [ 
            self project deleteVersion: self version as: self user.
            self session save.
            self answer ]