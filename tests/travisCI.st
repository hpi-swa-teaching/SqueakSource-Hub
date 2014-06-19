| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  configuration: 'WebClient';
  load.

Metacello new
  configuration: 'SqueakSource';
  version: #bleedingEdge;
  load: #( 'All' ).

Metacello new
  configuration: 'Magritte3AddOns';
  load: #('Magritte-Json').

Metacello new
  baseline: 'Project01';
  repository: 'filetree://', gitPath, '/SWTI2014-Project-01/packages';
  get.

Metacello new
  baseline: 'Project01';
  repository: 'filetree://', gitPath, '/SWTI2014-Project-01/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfProject01' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
