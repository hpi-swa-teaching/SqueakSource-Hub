visiting-description
visitContainer: aDescription
	stream object: [
		aDescription do: [ :each |
			each isJsonSerialized ifTrue: [ 
				each serializeJson: self object key: (self elementKeyOf: each) on: stream ] ] ]
		source: self object