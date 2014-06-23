rendering
renderContentOn: html
	| url |
	url := html urlForAction: [ | member |
		member := self model memberAt: self login.
		self session login: member.
		self editMember: 'Change password'].
	html heading: 'I forgot my password'.
	html text: 'You will get an e-mail with a secure url that takes you to your personal member-settings where you are able to set a new password. The url will be available for a few minutes only, so check your e-mail soon.'.
	html break; break.
	html form
		defaultAction: [ self sendPasswordToUserWithLogin: self login url: url ];
		with: [
			html div: [
				html table
						with: [
						html tableRow: [
							html tableData
								class: 'smallLabel';
								with: 'Login:  '.
							html tableData: [
								html textInput
									size: 5;
									on: #login of: self ] ] ].
					html break.
					html submitButton
						callback: [ self sendPasswordToUserWithLogin: self login url: url ];
						text: 'Send'.
					html space.
					html submitButton
						callback: [ self cancel ];
						text: 'Cancel' ] ]