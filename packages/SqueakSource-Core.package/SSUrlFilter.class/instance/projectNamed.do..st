private
projectNamed: aString do: aOneArgumentBlock
    | project |
    project := self
        projectNamed: aString
        ifNotAllowed: [ :pjct | 
            self authResponseFor: pjct.	"should not be reached: "
            nil ].
    project
        ifNil: [ self errorNotFound: aString ]
        ifNotNil: [ 
            [ aOneArgumentBlock value: project ]
                on: SSAccessViolation
                do: [ :ex | self authResponseFor: project ] ]