actions
moveAll
	<actionNamed: 'Move Package' priority: 80 access: #write>
	<icon: 'briefcase'>

	| versions |
	versions := self project versionsWithPackageName: self version packageName.

	(self confirmMove: versions) ifTrue: [
		self move: versions]