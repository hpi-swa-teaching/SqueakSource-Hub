accessing-project
reader: aProject
	| data |
	data := SSRepository storage loadMonticello: self from: aProject.
	^self readerClass on: (ReadStream on: data asByteArray).