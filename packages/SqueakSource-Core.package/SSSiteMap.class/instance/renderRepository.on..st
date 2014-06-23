rendering
renderRepository: repos on: xml

	self renderTopLevelOf: repos on: xml.
	repos visibleProjectsTo: self user do: [ :each |
		self renderProject: each on: xml ]