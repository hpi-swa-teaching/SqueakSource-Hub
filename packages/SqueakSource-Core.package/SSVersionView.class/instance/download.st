actions
download
	<actionNamed: 'Download Package' priority: 10 access: #read>
	<icon: 'download-alt'>
	self requestContext redirectTo: (self version url: self project).