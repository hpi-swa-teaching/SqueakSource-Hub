rendering
renderGoferOn: html

	self 
		renderCodeTabHeaderWith: [html text: 'Gofer'] on: html;
		renderCodeTabContentWith: [
			html preformatted: [ html code: [
				html text: 'Gofer new'; break; text: '    '.
				self renderRepositoryAccessorWithDefault: 'url:' on: html. html text: ';'; break.
				(self versions collect: [ :each | each packageName ]) asSet asSortedCollection
					do: [ :each | html text: '    package: '; text: each printString; text: ';'; break ].
				html text: '    load'; break ]]]
		on: html.