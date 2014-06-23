updating
updateRoot: html

	super updateRoot: html.
	html link
		beAlternate; beRss; 
		title: self model title; 
		url: self feedUrl.