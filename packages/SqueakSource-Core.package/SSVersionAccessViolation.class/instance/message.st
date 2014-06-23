accessing
message
    ^ self member printString , ' must have ' , self right printString , ' rights to perform '
        , self operation printString , ' on version ' , self version printString , ' in project '
        , self project printString , '.'