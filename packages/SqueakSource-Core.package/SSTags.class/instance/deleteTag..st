actions
deleteTag: aTag
	(self confirm: 'Do you really want to remove the tag `' , aTag name , '''?') == true
		ifTrue: [
			self repository deleteTag: aTag.
			self session save.
			self resetModel ]