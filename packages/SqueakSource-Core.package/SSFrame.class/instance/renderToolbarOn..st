rendering
renderToolbarOn: html
	
	self
		renderNavbarItem: [self homeClass menuNameOn: html] with: [ self showHome ] on: html;
		renderNavbarItem: [self projectsClass menuNameOn: html] with: [ self showProjects ] on: html;
		renderNavbarItem: [self tagsClass menuNameOn: html] with: [ self showTags ] on: html;
		renderNavbarItem: [self membersClass menuNameOn: html] with: [ self showMembers ] on: html;
		renderNavbarItem: [self groupsClass menuNameOn: html] with: [ self showGroups ] on: html;
		renderNavbarItem: [self helpClass menuNameOn: html] with: [ self showHelp ] on: html;
		renderNavbarItem: [self aboutClass menuNameOn: html] with: [ self showAbout ] on: html;
		
		yourself