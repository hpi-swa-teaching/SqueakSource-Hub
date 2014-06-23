rendering
renderedContent

	^ self class builder
		fullDocument: true;
		rootBlock: [ :root | 
			self updateRoot: root ];
		render: [ :canvas |
			self renderContentOn: canvas ]