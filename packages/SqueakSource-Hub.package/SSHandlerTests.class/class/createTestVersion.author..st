helper
createTestVersion: packageName author: authorName
	| basePackageName version versionStream definitions |
	basePackageName := packageName copyUpToLast: $-.
	definitions := OrderedCollection new.
	definitions add:
		(MCClassDefinition
                    name: 'HubTestClass'
                    superclassName: 'Object'
                    category: basePackageName
                    instVarNames: ''
                    classVarNames: ''
                    poolDictionaryNames: #()
                    classInstVarNames: ''
                    comment: '').
	
	version := MCVersion new
                setPackage: (MCPackage new name: basePackageName)
                info:
                    (MCVersionInfo
                        name: packageName
                        id: UUID new
                        message: 'This is a mock version'
                        date: Date current
                        time: Time current
                        author: authorName
                        ancestors: #())
                snapshot: (MCSnapshot fromDefinitions: definitions)
                dependencies: #().

	versionStream := RWBinaryOrTextStream on: String new.
	version fileOutOn: versionStream.
	^ versionStream