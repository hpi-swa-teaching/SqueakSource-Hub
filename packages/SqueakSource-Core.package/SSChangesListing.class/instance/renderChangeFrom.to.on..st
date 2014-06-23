rendering
renderChangeFrom: oldInfo to: newInfo on: html
	"List changes from old version to new version"
	| intermediate diff cs |
	oldInfo = newInfo ifTrue: [^self].
	intermediate := self versionAfter: oldInfo upTo: newInfo.
	intermediate ifNotNil: [
		cs := (MCDiffyVersion nameForVer: intermediate name base: oldInfo name), '.cs'.
		html anchor url: cs; with: cs. 
		html break.
		self renderChangeFrom: intermediate to: newInfo on: html]
	ifNil: ["should not be reached ever"
		diff := MCDiffyVersion nameForVer: newInfo name base: oldInfo name.
		html text: diff; break].

