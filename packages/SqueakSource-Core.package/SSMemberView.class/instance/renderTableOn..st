rendering
renderTableOn: html
	html table
		with: [
			self renderEmailOn: html.
			self renderList: self model adminInProjects label: 'Admin:' on: html.
			self renderList: self model developerInProjects label: 'Developer:' on: html.
			self renderList: self model guestInProjects label: 'Guest:' on: html.
			self renderList: self model groups label: 'Groups:' on: html ]