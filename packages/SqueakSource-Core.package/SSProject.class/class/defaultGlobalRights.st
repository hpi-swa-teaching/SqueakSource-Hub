defaults
defaultGlobalRights

	^ SSAccessPolicy globalRights collect: [ :each | each -> each asCapitalizedPhrase ]
