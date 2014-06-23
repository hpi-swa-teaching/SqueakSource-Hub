rendering
renderTopLevelOf: repos on: xml

	self renderUrl: repos rootUrl on: xml.
	{SSProjects . SSMembers . SSGroups . SSTags . SSHelp} 
		do: [:cls | | url |
			url := repos rootUrl copy.
			cls new updateUrl: url.
			self renderUrl: url on: xml].