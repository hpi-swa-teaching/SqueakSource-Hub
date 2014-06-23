rendering
updateRoot: html
	super updateRoot: html.
	"google sitemaps verification"
	self model googleWebmasterAccount
		isEmptyOrNil ifFalse: [
			html meta
				name: 'verify-v1';
				content: self model googleWebmasterAccount].
	html title: self model title
	