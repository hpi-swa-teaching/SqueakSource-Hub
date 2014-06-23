*SqueakSource-Core-Model-convenience
completeUrlFromRequest: anUrl
	" Set host and probably port for anUrl from the Host header of the request"
	" host header has the form
		localhost
	or
		localhost:9090
	"
	
	| hostParts url | 
	hostParts := (self requestContext request 
			headerAt: 'host' 
			ifAbsent: [" no avail, be non-absolute." ^ anUrl])
		findTokens: $:. "includes host, probably port"
	url := anUrl copy.
	(hostParts size > 1) 
		ifTrue: ["port included" url port: hostParts second].
	url host: hostParts first.
	^ url