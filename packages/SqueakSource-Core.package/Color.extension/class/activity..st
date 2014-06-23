*SqueakSource-Core
activity: aFloat
	| index hue |
	index := aFloat min: 1.0 max: 0.0.
	hue := 240 - (240 * index).
	^self h: hue s: 1 v: 1