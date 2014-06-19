baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakSource-Core-Handlers';
				package: 'SqueakSource-Tests-Handlers' with: [spec requires: #('default')].
			spec
				group: 'default' with: #('SqueakSource-Core-Handlers');
				group: 'Tests' with: #('SqueakSource-Tests-Handlers');
				group: 'TravisCI' with: #('Tests') ]