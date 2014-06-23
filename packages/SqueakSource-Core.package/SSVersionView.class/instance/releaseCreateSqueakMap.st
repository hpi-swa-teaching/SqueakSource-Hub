actions
releaseCreateSqueakMap

	(self call: (SSRegisterSqueakMap model: self model))
		ifNotNil: [
			(self version registerSqueakMap: self project)
				ifNil: [ self version beRelease. self session save ]
				ifNotNil: [:result |
					self requestContext respond: [:response |
						response
							contentType: WAMimeType textHtml;
							document: result contents mimeType: WAMimeType textHtml]]]