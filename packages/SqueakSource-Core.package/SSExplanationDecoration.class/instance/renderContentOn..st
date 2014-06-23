rendering
renderContentOn: html
	html paragraph: 'SqueakSource allows a fine-grained control about the people being allowed to read, write and admin your project. The following settings are available:'.
	html unorderedList: [
		html listItem: 'Global specifies the default right for users not being marked as guest, developer or administrator of this project.'.
		html listItem: 'Administrators are allowed to edit the project settings, to update the rss-feed, to make releases and to open and save versions.'.
		html listItem: 'Developers are allowed to open and save versions.'.
		html listItem: 'Guests are allowed to open versions.' ].
	self renderNextOn: html