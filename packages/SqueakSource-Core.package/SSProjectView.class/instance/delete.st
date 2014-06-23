actions
delete
    <actionNamed: 'Delete project' priority: 40 access: #admin>
    <icon: 'trash'>
    (self
        confirm:
            'You are about to delete the project ''' , self model title
                ,
                    '''.
	All data and version information will be lost!
	Are you sure you really want to delete this project?')
        ifTrue: [ 
            self model removeFromSystemAs: self user.
            self saveSession.
            self answer: nil	"self session expire" ]