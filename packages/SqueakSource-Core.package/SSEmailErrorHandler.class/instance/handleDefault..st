actions
handleDefault: anError

	| contents |

	contents := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root |
			root title: 'Internal Error' ];
		render: [ :html |
			html heading level1; with: 'Error'.
			html text: 'There has been an internal error. The system administrator has been notified.' ].
		
	self requestContext respond: [:response |
		response
			internalError;
			nextPutAll: contents]