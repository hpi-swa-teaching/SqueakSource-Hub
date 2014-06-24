baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakSource-Hub-Handlers' with: [spec requires: #('MagritteJson' 'SqueakSource')];
				package: 'SqueakSource-Hub-Tests' with: [spec requires: #('SqueakSource-Hub-Handlers')].
			spec
				group: 'default' with: #('SqueakSource-Hub-Handlers');
				group: 'Tests' with: #('SqueakSource-Hub-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself.
			spec
				project: 'MagritteJson' with: [ spec
					className: 'ConfigurationOfMagritte3AddOns';
					loads: #( 'Magritte-Json'  );
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3Addons/main' ];
				project: 'SqueakSource' with: [ spec
					className: 'ConfigurationOfSqueakSource';
					versionString:#bleedingEdge;
					loads: #( 'Standard' 'Tests' );
					repository: 'http://www.squeaksource.com/squeaksource3' ];
				yourself.]