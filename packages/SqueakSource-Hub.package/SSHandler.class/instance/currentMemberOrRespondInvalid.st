as yet unclassified
currentMemberOrRespondInvalid
	^ self memberFromAuthorization ifNil: [
			self memberFromCookie ifNil: [
				self respondInvalidLoginData ] ].