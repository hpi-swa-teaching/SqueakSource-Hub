instance creation
array: anArray author: aMember
	^(self stream: (GRPlatform current squeakSourceRWStreamOn: anArray) author: aMember)
		size: anArray size;
		yourself