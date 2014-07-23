SWTI2014-Project-01
===================

#### master [![Build Status: master](https://travis-ci.org/SWTI2014/SWTI2014-Project-01.svg?branch=master)](https://travis-ci.org/SWTI2014/SWTI2014-Project-01)
#### pharogemstone [![Build Status: pharogemstone](https://travis-ci.org/SWTI2014/SWTI2014-Project-01.svg?branch=pharogemstone)](https://travis-ci.org/SWTI2014/SWTI2014-Project-01)

- **ShLoginHandler**
- [X] login
- **ShLogoutHandler**
- [X] logout
- **ShProjectsHandler**
- [ ] addContributor: contributorName toProject: name owner: username
- [X] addWatcherForProject: name owner: username
- [X] count
- [ ] deletePackage: packageName project: projectName owner: username
- [ ] deleteProject: name owner: username
- [ ] getCommitsForProject: name owner: username
- [ ] getContributorsOfProject: name owner: username
- [X] getLatests
- [X] getProject: name owner: username
- [X] getProjectsOwner: aString
- [X] getWatchersOfProject: project owner: name
- [ ] registerProject: name owner: ownerName
- [ ] removeContributor: username fromProject: name owner: ownerName
- [X] removeWatcherFromProject: name owner: username
- [X] searchProjectsNamed: aString
- [X] updateProject: name owner: username
- **ShRepositoryHandler**
- [ ] getInboxVersionsOf: aString owner: aString2
- [ ] getPackagesOf: name owner: username
- [ ] getVersion: version ofProject: name owner: username
- [ ] getVersionNamesOf: project owner: owner
- [ ] getVersionsOf: name owner: username
- [ ] getVersionsOf: name package: package owner: username
- **ShTeamsHandler**
- [ ] addMember: username toTeam: name
- [ ] deleteTeam: name
- [X] getTeam: aString
- [X] getTeamMembers: aString
- [ ] registerTeam: name
- [ ] removeMember: username fromTeam: name
- [ ] searchTeamNamed: aString
- [ ] updateTeam: name
- **ShTimelineHandler**
- [ ] getEvents: username newerThan: aString
- [X] getTimeline: username
- [X] getTimeline: username page: aString
- [X] getWatchingTimeline: username
- **ShUsersHandler**
- [X] count
- [X] getCurrentUser
- [X] getCurrentUserTeams
- [X] getLatests
- [X] getUser: aString
- [X] getUserTeams: username
- [X] getWatchedProjectsByUser: aString
- [X] registerUser: username
- [X] searchUsersNamed: aString
- [X] updateUser: username
- **ShVersionsHandler**
- [X] count
- [ ] deleteVersion: version project: project owner: owner
- [ ] getVersion: version project: project owner: owner
- **ShMonticelloHandler**
- [X] getDiffVersion: version ofProject: name owner: username
- [X] getListingOf: aString owner: aString2
- [X] getMCListingOf: aString owner: aString2
- [ ] getProjectListingOfOwner: entityName
- [X] getRawListingOf: aString owner: aString2
- [X] getVersion: version ofProject: name owner: username
- [ ] headVersion: version ofProject: name owner: username
- [X] putVersion: version ofProject: name owner: username
