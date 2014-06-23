as yet unclassified
updateRoot: anHtmlRoot

	super updateRoot: anHtmlRoot.
	anHtmlRoot addScript: 'hljs.initHighlightingOnLoad();'.