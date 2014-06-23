convenience
activity
	"This is non-trivial code with physical background: it calculates an artifical float representing the activity of the receiver. The bigger the number, the more siginification is this publication in the past days. This codes uses the halflife-time known from radioactive elements, in this example the constant lambda has been set to 3 days."
	
	| lambda time |
	lambda := 2 ln / (3 * 24 * 60 * 60).
	time := self timestamp asSeconds - TimeStamp current asSeconds.
	^(time * lambda) exp.