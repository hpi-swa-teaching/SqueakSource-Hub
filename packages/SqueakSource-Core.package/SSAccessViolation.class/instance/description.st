accessing
description
    self messageText isEmptyOrNil not
        ifTrue: [ ^ super description ].
    ^ self message