rendering
renderFormOn: html

	html div 
		class: 'control-group';
		with: [
			html
				label
				class: 'control-label';
				with: [html text: 'Login'].
			html space.
			html textInput on: #username of: self].
	html div 
		class: 'control-group';
		with: [
			html
				label
				class: 'control-label';
				with: [html text: 'Password'].
			html space.
			html passwordInput on: #password of: self].
