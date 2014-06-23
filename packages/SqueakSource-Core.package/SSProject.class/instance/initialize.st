initialization
initialize
	
	super initialize.
	id := title := information := String new.
	accessPolicy := SSAccessPolicy new.
	versions := GRPlatform current reducedConflictDictionary new.
	dateCreated := Date today.
	tags := SortedCollection new.
