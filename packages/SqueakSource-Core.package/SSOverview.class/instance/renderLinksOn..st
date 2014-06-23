rendering
renderLinksOn: html
	html heading level2; with: 'Links'.
	html anchor
		title: 'static project url';
		url: self model fullHomepageUrl;
		with: self model fullHomepageUrl.
	html break.
	html anchor
		title: 'static listing url';
		url: self model fullDirectoryUrl;
		with: self model fullDirectoryUrl