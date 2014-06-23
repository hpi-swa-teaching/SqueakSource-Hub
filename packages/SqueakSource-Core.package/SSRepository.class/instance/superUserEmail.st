accessing-settings
superUserEmail

	^ self propertyAt: #superUserEmail
		ifAbsent: [Array streamContents: [:strm |
			self members do: [:ea |
				ea isSuperUser ifTrue: [
					strm nextPut: ea fullEmailAddress]]]]