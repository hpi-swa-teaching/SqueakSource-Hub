actions
addMessage
	<actionNamed: 'Add Message' priority: 20 access: #admin>
	<icon: 'bullhorn'>
	
	| entry component |
	entry := SSFeedEntry new
		author: self session user;
		title: self model title;
		message: String new;
		yourself.
		
	component := entry asComponent
		addTitle: 'Add Message'; 
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	entry := self call: component.
	entry ifNotNil: [
		self model feeds add: entry.
		self resetModel.
		self session save ].