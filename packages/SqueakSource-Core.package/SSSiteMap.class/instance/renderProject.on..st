rendering
renderProject: aProject on: xml

	self renderUrl:  (aProject fullDirectoryUrl slash: true) on: xml.
	self renderUrl:  aProject fullHomepageUrl on: xml.
	(SSProjectView  model: aProject) priorizedTabs sorted 
		do: [:assoc | |name|
			name := assoc value first.
			self renderUrl:  (aProject fullHomepageUrl copy addToPath: name) on: xml].
