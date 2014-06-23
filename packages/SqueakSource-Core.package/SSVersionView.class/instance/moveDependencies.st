actions
moveDependencies
	<actionNamed: 'Move Dependencies' priority: 90 access: #write>
	<icon: 'briefcase'>

	| versions |
	versions := self project dependentVersionsFor: self version.
	self move: versions