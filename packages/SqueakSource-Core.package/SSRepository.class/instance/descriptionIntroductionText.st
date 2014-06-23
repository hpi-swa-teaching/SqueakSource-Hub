accessing-descriptions
descriptionIntroductionText

	<magritteDescription>
	^ MAMemoDescription  new
		label: 'Override home text';
		selectorAccessor: #introText;
		priority: 700;
		yourself