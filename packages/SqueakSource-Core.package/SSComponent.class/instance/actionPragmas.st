actions-accessing
actionPragmas

	^ {
		"simple actions"	
		#actionNamed:priority: . [true] .
		"restricted actions"	
		#actionNamed:priority:access: . [:pragma | self isMember: self user allowedTo: (pragma argumentAt: 3)] .
		"conditionally shown actions" 
		#actionNamed:priority:condition: . [:pragma | self perform: (pragma argumentAt: 3)]
	} 
