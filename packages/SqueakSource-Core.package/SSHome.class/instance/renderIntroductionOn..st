rendering
renderIntroductionOn: html
	self repository introText withBlanksTrimmed isEmpty ifFalse: [
		html div class: 'lead'; with: [
			(self repository introText findTokens: String cr) do: [ :paragraph | 
				html paragraph: [
					html html: paragraph ] ] ] ].

	html paragraph
		class: 'lead';
		with: [
		html text: 'Welcome to SqueakSource, the smart Monticello code-repository for Squeak. To get started register your personal account and create any number of projects to host on our server. You''ll immediately get all the necessary permissions to create and manage your account, projects and versions. Detailed instructions can be found on the '.
		html anchor
			callback: [ self call: (SSHelp model: self model) ];
			with: 'Help'.
		html text: ' page.' ].
	
	html paragraph: [
		html text: 'Please report any problems or suggestions to the '.
		html anchor
			url: 'mailto:', 'squeak-dev@lists.squeakfoundation.org';
			with: 'Squeak Mailing-List'.
		html text: '. Enjoy!' ]