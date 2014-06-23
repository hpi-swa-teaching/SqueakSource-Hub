accessing
message
    ^ self member printString , ' must have ' , self right printString , ' rights to perform '
        , self operation printString , ' on project ' , self project printString , '.'