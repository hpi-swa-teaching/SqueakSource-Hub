rendering
renderHowToSqueakOn: html
	html heading level2; with: 'How to use SqueakSource?'.
	html paragraph: [
		html text: 'To use SqueakSource you have to create a project, what is described below, and to install the '.
		html anchor
			url: 'http://wiki.squeak.org/squeak/1287';
			with: 'Monticello'.
		html text: ' client into your Squeak image:' ].
	html orderedList: [
		html listItem: 'Open the ''Package Loader'' from the world-menu.'.
		html listItem: 'Load the most recent versions of ''MCInstaller'' and ''Monticello''.'.
		html listItem: 'Open the ''Monticello Browser'' from the world-menu.'.
		html listItem: 'Click ''+Repository'' and choose ''HTTP'' to add the SqueakSource repository to the ''Monticello Browser''.'.
		html listItem: 'Copy and paste the registration-string from the overview-tab of your project into the dialog and add your password manually.'.
		html listItem: 'Now you should be able to open and save versions of your project into that repository.' ]