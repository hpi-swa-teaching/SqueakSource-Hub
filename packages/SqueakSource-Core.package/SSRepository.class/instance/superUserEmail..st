accessing-settings
superUserEmail: anObject

	self propertyAt: #superUserEmail
		put: (anObject isString
			ifTrue: [	(Array streamContents: [:strm |
						(anObject findTokens: ',') do: [:ea |
							strm nextPut: (WAEmailAddress address: ea withBlanksTrimmed) ]])]
			ifFalse: [anObject]).  
