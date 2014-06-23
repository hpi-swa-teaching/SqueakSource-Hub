actions
copyDependencies
    <actionNamed: 'Copy Dependencies' priority: 60 access: #read>
    <icon: 'paste'>
    | versions project |
    versions := self project dependentVersionsFor: self version.
    project := self
        call:
            ((SSSimpleObjectChooser
                model: self writableProjectsForUser
                heading: 'Select the project to copy the following versions to')
                infoBlock: [ :html | html unorderedList: [ versions asSortedCollection do: [ :each | html listItem: [ html text: each fileName ] ] ] ];
                yourself).
    project ifNil: [ ^ self ].
    versions
        do: [ :each | 
            self project
                copyVersion: each
                to: project
                author: self user
                as: self user ].
    self session save.
    self answer