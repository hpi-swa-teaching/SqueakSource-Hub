helper
createTestVersion: packageName author: authorName
	| basePackageName version versionStream |
	basePackageName := packageName copyUpToLast: $-.
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
                snapshot: (MCSnapshot fromDefinitions: Array new)
                dependencies: #().

	versionStream := RWBinaryOrTextStream on: String new.
	[version fileOutOn: versionStream]
			on: Notification
			do: [:notification | ].
	^ versionStream