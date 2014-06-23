rendering
renderInstallerOn: html

	self 
		renderCodeTabHeaderWith: [html text: 'Installer'] on: html;
		renderCodeTabContentWith: [
			html preformatted: [ html code: [
				html text: '(Installer '.
				self renderRepositoryAccessorWithDefault: 'monticello http:' on: html.
				html text: ')'; break.
				(self versions collect: [ :each | each packageName ]) asSet asSortedCollection
					do: [ :each | html text: '    install: '; text: each asString printString; text: ';'; break].
				html text: '    yourself.'; break]]]
		on: html