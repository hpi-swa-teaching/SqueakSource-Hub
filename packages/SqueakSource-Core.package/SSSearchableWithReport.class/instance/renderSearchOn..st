rendering
renderSearchOn: html
	html form
		class: 'form-search';
		defaultAction: [ self search ];
		with: [
			html div class: 'input-append';
				with: [
					html searchInput
						class: 'input-medium';
						class: 'search-query';
						on: #searchText of: self.
					html submitButton
						class: 'btn';
						callback: [ self search ];
						text: 'Search' ] ]
