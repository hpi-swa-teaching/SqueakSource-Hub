convenience
doInRequest: aBlock
	"emualte a proper Seaside Request to happily print everything neccessary."
	
	| context req |
	req :=  WARequest method: 'GET' uri: 'http://www.example.com/sitemap.xml'.
	req headers at: 'host' put: 'www.example.com'.
	context := WARequestContext 
		request: req
		response: nil
		codec: GRNullCodec new.
	context 
		push: WAApplication new
		while: aBlock