as yet unclassified
renderOptionsOn: html
	(html twbsNav)
		beTabs;
		list: self options;
		selected: self selection;
		callback: [ :value | self select: value ];
		labels: [ :each | self labelForOption: each ]