accessing
login: anObject
	"Set the value of login"
	
	self flag: #NeedsReview. 
	"self login isEmptyOrNil ifFalse: [ ^self error: 'Member login is immutable' ]."
	login := anObject