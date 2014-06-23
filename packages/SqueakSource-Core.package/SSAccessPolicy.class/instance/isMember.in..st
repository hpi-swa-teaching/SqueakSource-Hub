testing
isMember: aMember in: aList
	^(aList includes: aMember)
		or: [(aList select: [:ea | ea isGroup])
				anySatisfy: [:group | group hasMember: aMember]]