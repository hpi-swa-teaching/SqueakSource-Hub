accessing
appendConfigsInProject: aProject to: aStream
	aProject configs do: [ :config |
		aStream nextPut: aProject -> config ]