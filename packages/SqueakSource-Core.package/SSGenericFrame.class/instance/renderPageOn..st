rendering
renderPageOn: html

	(html twbsSpan: 2)
		id: 'navigation';
		with: [ self renderNavigationOn: html ].
	(html twbsSpan: 10)
		id: 'contents';
		with: [ self renderContentsOn: html ].
