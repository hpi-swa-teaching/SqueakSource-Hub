rendering-tools
renderNavbarWith: block on: html

	html div class: 'navbar'; class: 'navbar-inverse'; class: 'navbar-static-top';
		with: [html div class: 'navbar-inner'; 
			with: [html twbsContainer
				with: [html div class: 'nav-collapse'; class: 'collapse';
					with: block]]].