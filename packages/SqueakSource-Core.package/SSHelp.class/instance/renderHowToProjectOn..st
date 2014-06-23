rendering
renderHowToProjectOn: html
	self flag: #smell; flag: #needsWork.
	html heading level2; with: 'How to create a project?'.
	self repository allowRegisterProject
		ifTrue: [
			html paragraph: [
				html text: 'To create a new project you need to have a SqueakSource account ('.
				html anchor
					callback: [ self registerMember ];
					with: 'Register member'.
				html text: ') and you need to be logged-in ('.
				html anchor
					callback: [ self loginMember ];
					with: 'Login'.
				html text: '). Then you are able to create any number of new projects ('.
				html anchor
					callback: [ self registerProject ];
					with: 'Register Project'.
				html text: '), by filling-in the project form. '.
				html text: 'You will find some additional information concerning this step at the top of the project-registration dialog.' ]]
		ifFalse: [
			html paragraph: [
				html text: 'On this server, only the  '.
				html anchor
					url: 'mailto:', self repository superUserEmail first address;
					with: 'administrator'.
				html text: ' can create new projects ('.
				html anchor
					callback: [ self registerProject ];
					with: 'Register Project'.
				html text: ').' ] ].
	html paragraph: [
		html text: 'The newly created project is now shown in the list with all the projects you are involved in below your name on the left. The following tabs are available in the project-view:' ].
	html unorderedList: [
		html listItem: 'Overview: Project''s description, members, registration template and some statistics. Use the registration template to create a new repository in your monticello client.'.
		html listItem: [ 
			html text: 'Wiki: Each project has its own wiki that can be modified by developers and admins. The syntax is similar to the one of SmallWiki:'.
			html unorderedList: [
				html 
					listItem: 'Paragraph: A carriage return becomes a new paragraph.';
					listItem: [html text: 'Headers: A line starting with one or more '; code: '!'; text: ' becomes a header.'];
					listItem: [html text: 'Horizontal Rule: A line starting with '; code: '_'; text: ' becomes a horizotal rule.'];
					listItem: [html text: 'Lists: A block of lines starting with '; code: '#'; text: ' or '; code: '-'; text:' becomes a ordered-/unordered list.'];
					listItem: [html text: 'Preformatted: A block of lines starting with '; code: '='; text: ' becomes preformatted.'];
					listItem: [html text: 'Links: Text beteween stars becomes an internal (e.g. '; code: '*My Page*'; text: ') or an external reference (e.g. '; code: '*http://www.google.com*'; text: ').'];
					listItem: 'XHTML: Use any valid XHTML tags withing your code.' ] ].
		html listItem: 'RSS-Feed: Administrators are able to add custom messages to the project-feed by clicking on ''Add Message''. They will show up on this tab-panel and in the rss-feed of the project.'.
		html listItem: 'Releases: Releases are committed versions that have been released. They are public and readable by everybody. To remove a release select ''details->Remove Release''. Releases do show up automatically in the rss-feed of the project.'.
		html listItem: 'Versions: This list shows all commits that have not been tagged as releases. To create a release or create a SqueakMap release, click on ''details/release''. This view shows details about the versions and let you make a release or browse the code in your web-browser.' ]