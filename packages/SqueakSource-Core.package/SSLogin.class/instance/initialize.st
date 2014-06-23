initialize-release
initialize
	|deco|
	super initialize.
	deco := TWBSFormDecoration new buttons: #(login cancel).
	deco beHorizontal.
	self addDecoration: deco.
	loginFailed := false.