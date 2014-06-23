updating
updateRoot: aHtmlRoot

	| repository |
	super updateRoot: aHtmlRoot.
	repository := self repository.

	aHtmlRoot beHtml5.
	aHtmlRoot headElements copy do: [:ea | 
		(ea isKindOf: WAMetaElement) ifTrue: [aHtmlRoot headElements remove: ea]].
	(aHtmlRoot htmlAttributes)
		removeKey: 'xmlns';
		removeKey: 'xml:lang'.
	aHtmlRoot if lessThan; ie: '9';
 		do: [aHtmlRoot script beJavascript; url: 'http://html5shim.googlecode.com/svn/trunk/html5.js'].
	aHtmlRoot link beAlternate; beRss; title: repository title; url: self feedUrl.
	aHtmlRoot link beShortcutIcon; 
		type: repository faviconMimeType;
		url: (repository rootUrl addToPath: repository faviconFilename; yourself).
