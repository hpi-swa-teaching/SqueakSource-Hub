convenience
registerSqueakMapCurl: aProject

	| ursername password url arguments postdata curl proxyServer proxyPort |
	ursername := (self propertyAt: self class smUsernameProperty).
	password := (self propertyAt: self class smPasswordProperty).
	url := Url absoluteFromText: (self squeakMapUrl, '/packagebyname/' , (self propertyAt: self class smPackageProperty) , '/newrelease').
	arguments := {
		'version' -> { (self versionInfo name copyAfter: $.) extractNumber asString }.
		'note' -> { self propertyAt: self class smVersionCommentProperty }.
		'downloadURL' -> { self url: aProject } }.
	postdata := String streamContents: [ :stream |
		arguments do: [ :each |
			stream nextPutAll: each key encodeForHTTP.
			stream nextPut: $=.
			stream nextPutAll: each value encodeForHTTP ] ].

	curl := (self class environment classNamed: 'Curl') new.

	HTTPSocket httpProxyServer isNil ifFalse: [ "use proxy"
		proxyServer := HTTPSocket httpProxyServer.
		proxyPort := HTTPSocket httpProxyPort.
		proxyPort isNil
			ifTrue: [ curl proxy: proxyServer ]
			ifFalse: [ curl proxy: proxyServer, ':' , proxyPort asString ] ].

	curl onHttpAuthAny.
	curl onPost.
	curl userPwd: ursername, ':' , password.
	^curl putContents: postdata url: url printString. 
	