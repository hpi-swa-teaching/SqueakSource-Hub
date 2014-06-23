actions
history
	<actionNamed: 'Show History' priority: 30 access: #read>
	<icon: 'time'>
	self call: (SSWindow new
		title: 'Version History';
		content: (SSVersionHistoryItems
			information: (self version reader: self project) info withBreadthFirstAncestors
			project: self project
			announcer: self announcer))