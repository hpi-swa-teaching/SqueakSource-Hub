accessing-versions
versionsWithPackageName: packageName

	^self versions
		select: [ :each | each packageName = packageName ].