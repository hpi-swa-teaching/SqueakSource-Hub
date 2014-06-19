baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakSource-Core-Handlers' with: [spec requires: #('dependencies')];
				package: 'SqueakSource-Tests-Handlers' with: [spec requires: #('default')].
			spec
				group: 'dependencies' with: #('SqueakSource' 'WebClient' 'Magritte-Json');
				group: 'default' with: #('default' 'SqueakSource-Core-Handlers');
				group: 'Tests' with: #('SqueakSource-Tests-Handlers');
				group: 'TravisCI' with: #('Tests') ]