rendering
renderChangesFrom: old to: new on: html
	"List changes from old configuration to new configuration"

	| newPackages oldPackages added removed oldDep |
	newPackages := new dependencies collect: [:dep | dep package].
	oldPackages :=  old dependencies collect: [:dep | dep package].
	added := new dependencies reject: [:dep | oldPackages includes: dep package].
	removed := old dependencies reject: [:dep | newPackages includes: dep package].
	added ifNotEmpty: [
		html strong: 'Added: '.
		added do: [:each | html text: each versionInfo name]
			separatedBy: [ html text: ', '].
		html break].
	removed ifNotEmpty: [
		html strong: 'Removed: '.
		removed do: [:each | html text: each versionInfo name]
			separatedBy: [ html text: ', '].
		html break].
	 new dependencies do: [:newDep |
		oldDep := old dependencies detect: [:p | newDep package = p package] ifNone: [].
		oldDep ifNotNil: [
			self renderChangeFrom: oldDep versionInfo to: newDep versionInfo on: html]].