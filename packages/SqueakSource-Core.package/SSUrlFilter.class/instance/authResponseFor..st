errors
authResponseFor: aProject

	| realm |
	realm := self repository ifNotNil: [:r | r title].
	realm := realm ifNotNil: [:r |  r, ' - ', aProject title].
	
	self responseGenerator 
		authenticate: realm; 
		respond
