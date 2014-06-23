rendering
renderMeansOfAccessOn: html
	
	html heading level2; with: 'Getting the Code'.
	html div
		with: [
		html unorderedList: [
			self 
				renderCodeTabWith: [self renderRegistrationOn: html] on: html;
				renderCodeTabWith: [self renderGoferOn: html] on: html;
				renderCodeTabWith: [self renderInstallerOn: html] on: html]].
	html div style: 'clear:both'.
			