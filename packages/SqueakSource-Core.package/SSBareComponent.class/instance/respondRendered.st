rendering
respondRendered
	
	self renderedContent
		ifNotNil: [:content | 
			self requestContext respond: [:response |
				self class isBinary ifTrue: [response binary].
				response
					contentType: self class contentType;
					nextPutAll: content]]
		ifNil: [self requestContext responseGenerator notFound; respond]