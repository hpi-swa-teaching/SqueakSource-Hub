accessing
allowAllRead
	^self allowAllWrite 
		or: [ globalRight = self class allowAllRead ]