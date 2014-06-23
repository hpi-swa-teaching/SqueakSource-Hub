copying
copyVersions

	| versionsCopy |
	versionsCopy := versions species new.
	versions keysAndValuesDo: [:key :value |
		versionsCopy at: key put: value copy].
	^ versionsCopy