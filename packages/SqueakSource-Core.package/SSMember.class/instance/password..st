accessing
password: aString

	aString = self password ifFalse: [
		passwordHash := GRPlatform current secureHashFor: aString ]