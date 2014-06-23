initialize-release
initializeTabPanel
	self tabPanel: SSTabPanel new.
	
	self priorizedTabs sorted do: [:assoc |
		| name component |
		name := assoc value first.
		component := assoc value second.
		self tabPanel addTab: component named: name].

	self tabPanel selectFirst.