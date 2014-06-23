accessing-versions
dependentVersionsFor: aVersion
    | deps vrsns |
    deps := OrderedCollection with: aVersion.
    vrsns := self versions.
    aVersion dependencies
        do: [ :dependency | deps addAll: (vrsns select: [ :each | each versionInfo name = dependency name ]) ].
    ^ deps