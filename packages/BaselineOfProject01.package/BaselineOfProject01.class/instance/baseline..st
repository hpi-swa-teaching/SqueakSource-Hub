baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakSource-Hub' with: [spec requires: #('MagritteJson' 'SqueakSource')].
			spec
				package: 'VB-Regex' with: [
					spec repository: 'http://www.squeaksource.com/Regex'].
			spec
				group: 'default' with: #('SqueakSource-Hub' 'VB-Regex');
				group: 'TravisCI' with: #('default');
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
				yourself.].
			
	spec
		for: #squeak
		do: [
			spec package: 'VB-Regex' with: [
				spec repository: 'http://www.squeaksource.com/Regex']].