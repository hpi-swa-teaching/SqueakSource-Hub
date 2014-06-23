testing
isMember: aMember allowedTo: aSymbol

	aMember isAnonymous ifTrue: [^ self isEverybodyAllowedTo: aSymbol].
	aMember isSuperUser ifTrue: [^ true].
	aSymbol = self class read ifTrue: [
		^self allowAllRead
			or: [self allowAllWrite
			or: [(self isMember: aMember in: self developers)
			or: [(self isMember: aMember in: self admins)
			or: [self isMember: aMember in: self guests]]]]].
	aSymbol = self class write ifTrue: [
		^self allowAllWrite
			or: [(self isMember: aMember in: self developers)
			or: [self isMember: aMember in: self admins]]].
	aSymbol = self class admin ifTrue: [
		^self isMember: aMember in: self admins].
	aSymbol = self class bless ifTrue: [
		^ self canBless and:
			[(self isMember: aMember in: self developers)	
				or: [self isMember: aMember in: self admins]]].
	aSymbol = self class move ifTrue: [
		^ (self isMember: aMember in: self admins) 
		or: [(self isMember: aMember in: self developers) 
			and: [self developersCanMove]]].
	^ self error: 'Action ', aSymbol, ' unknown'
				