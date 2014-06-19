baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakSource-Core-Handlers';
				package: 'SqueakSource-Tests-Handlers' with: [spec requires: #('SqueakSource-Core-Handlers')].
			spec
				group: 'default' with: #('SqueakSource-Core-Handlers' 'MagritteJson' 'SqueakSource');
				group: 'Tests' with: #('SqueakSource-Tests-Handlers');
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