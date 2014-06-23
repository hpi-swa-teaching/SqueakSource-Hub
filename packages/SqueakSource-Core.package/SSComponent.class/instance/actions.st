accessing
actions

	^ Array streamContents: [:stream |
			self priorizedActions sorted 
				do: [:association | stream nextPutAll: association value]]
