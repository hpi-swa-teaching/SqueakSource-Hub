actions
copy
    <actionNamed: 'Copy Version' priority: 40 access: #read>
    <icon: 'copy'>
    | result |
    result := self
        call:
            (SSSimpleObjectChooser
                model: self writableProjectsForUser
                heading: 'Select the project to copy "' , self version fileName , '" to:').
    result ifNil: [ ^ self ].
    self project
        copyVersion: self version
        to: result
        author: self version author
        as: self user.
    self session save