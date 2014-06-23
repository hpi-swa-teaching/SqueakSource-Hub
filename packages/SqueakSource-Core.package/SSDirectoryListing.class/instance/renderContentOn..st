rendering
renderContentOn: html
	html heading level1; with: self title.
	html anchor
		url: self project fullHomepageUrl;
		with: self homepageUrlText.
	html paragraph: [html html: self information].
	super renderContentOn: html.
	self renderConfigsOn: html.