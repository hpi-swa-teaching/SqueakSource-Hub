tests
testPaths
	self 
		assert: (SSHandler path = nil);
		assert: (SSGroupHandler path = 'hub/teams');
		assert: (SSLoginHandler path = 'hub/login');
		assert: (SSLogoutHandler path = 'hub/logout');
		assert: (SSMemberHandler path = 'hub/users');
		assert: (SSProjectHandler path = 'hub/projects');
		assert: (SSMonticelloHandler path = 'mc');
		assert: (SSTimelineHandler path = 'hub/timeline');
		assert: (SSVersionsHandler path = 'hub/versions');
		assert: (SSHandlerTests new isAbstract = true).