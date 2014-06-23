copying
postCopy
	
	super postCopy.
	accessPolicy := accessPolicy copy.
	versions := self copyVersions.
	feeds := feeds copy.
	wiki := wiki copy.
	blessings := blessings copy.
	configs :=  configs copy.
	tags := tags copy.
	