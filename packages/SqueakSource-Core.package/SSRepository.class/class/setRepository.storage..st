initialization
setRepository: aRepository storage: anSSStorage

	Current := aRepository.
	Storage := anSSStorage.
	
	Storage ifNotNil: [
		self storage saveRepository: self current].