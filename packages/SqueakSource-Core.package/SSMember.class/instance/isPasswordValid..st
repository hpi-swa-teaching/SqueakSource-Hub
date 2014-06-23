testing
isPasswordValid: aString
	^ (GRPlatform current secureHashFor: aString) = passwordHash