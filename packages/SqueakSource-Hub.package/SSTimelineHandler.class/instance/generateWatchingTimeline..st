helper
generateWatchingTimeline: aMember
	| watchedProjects commits |

	watchedProjects := aMember favorites.
	commits := OrderedCollection new.
	watchedProjects 
		do: [:project | 
			project versionsDo: [:version | 
				commits add: (version asTimelineEvent: project)] as: self currentMember];
		sort: [:a :b | (a at: 'timestamp') > (b at: 'timestamp')].
	^ commits