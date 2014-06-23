accessing-versions
versionsSortedByTimeAs: aMember
    | coll |
    coll := SortedCollection sortBlock: [ :a :b | a timestamp < b timestamp ].
    self versionsDo: [ :version | coll add: version ] as: aMember.
    ^ coll