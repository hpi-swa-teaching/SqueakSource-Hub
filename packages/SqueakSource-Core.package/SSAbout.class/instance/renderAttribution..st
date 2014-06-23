rendering
renderAttribution: html

	html heading
		level3
		with: 'Attributions'.
	html paragraph: 'SqueakSource3 uses'.
	html definitionList: [
		html 
			definitionTerm: [html anchor url: 'http://seaside.st'; with: 'Seaside'];
			definitionData: 'A versatile, uncommon but sweet Web framework';
			definitionTerm: [html anchor url: 'https://code.google.com/p/magritte-metamodel/'; with: 'Magritte'];
			definitionData: 'A fully dynamic meta-description framework; describe once, use everywhere';
			definitionTerm: [html anchor url: 'http://twitter.github.com/bootstrap/'; with: 'Twitter Bootstrap'];
			definitionData: 'For easily looking good.';
			definitionTerm: [html anchor url: 'http://ss3.gemstone.com/ss/TwitterBootstrap.html'; with: 'Twitter Bootstrap Seaside bindings'];
			definitionData: 'By Nick Ager and others.';
			definitionTerm: [html anchor url: 'http://fortawesome.github.com/Font-Awesome/'; with: 'Font Awesome'];
			definitionData: 'Iconic font for Twitter Bootstrap.';
			definitionTerm: [html anchor url: 'http://softwaremaniacs.org/soft/highlight/en/'; with: 'Highlight.js'];
			definitionData: 'Code Highlighting by Ivan Sagalaev.';
			yourself].