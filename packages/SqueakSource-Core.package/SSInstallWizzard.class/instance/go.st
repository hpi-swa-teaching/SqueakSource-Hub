running
go
	| editor |
	editor := self asComponent
		addTWBSFormCustomizing: [:f| f beHorizontal];
		addTitle: 'SqueakSource Installation Wizard';
		addDecoration: TWBSBootstrapDecoration new;
		yourself.
	(self call: editor)
		ifNil: [self requestContext redirectTo: '/'.]
		ifNotNil: [self install]
		