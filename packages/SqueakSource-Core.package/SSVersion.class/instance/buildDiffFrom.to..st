accessing-diff
buildDiffFrom: baseReader to: versionReader

	| diff strm |
	versionReader info = baseReader info ifTrue: [^nil].
	(versionReader info hasAncestor: baseReader info) ifFalse: [^nil].
	GRPlatform  current squeaksourceDoWithoutProgressNotification: 
	[
		diff := MCDiffyVersion
			package: versionReader package
			info: versionReader info
			dependencies: versionReader dependencies
			baseInfo: baseReader info
			patch: (versionReader snapshot patchRelativeToBase: baseReader snapshot).
		strm := RWBinaryOrTextStream on: String new.
		strm binary.
		diff fileOutOn: strm.
		^strm contents
	].