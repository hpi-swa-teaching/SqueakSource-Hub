actions
browse
	<actionNamed: 'Browse Code' priority: 20 access: #read>
	<icon: 'list-alt'>
	
	| reader browser |
	[ reader := self version reader: self project.
	browser := SSSnapshotBrowser forSnapshot: reader snapshot.
	self call: ((SSBrowser model: browser)
		addTitle: 'Browse ' , self version fileName) ] 
	on: Error do: [ self errorNotFound: self version fileName ]