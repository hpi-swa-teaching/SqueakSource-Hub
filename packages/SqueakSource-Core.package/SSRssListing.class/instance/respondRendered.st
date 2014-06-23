rendering
respondRendered
	
	self requestContext respond: [:response |
		response
			contentType: WAMimeType applicationRssXml;
			nextPutAll: (RRRssRenderCanvas builder
				fullDocument: true;
				render: [ :canvas |
					self renderContentOn: canvas ]) ]
	
