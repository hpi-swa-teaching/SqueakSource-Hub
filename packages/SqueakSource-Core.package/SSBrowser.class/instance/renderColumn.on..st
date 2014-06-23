rendering
renderColumn: aSelector on: html
	| aList listIndex |
	aList := self model perform: (aSelector , 'List') asSymbol.
	listIndex := self model perform: (aSelector , 'Selection') asSymbol.
	aList isEmpty
		ifTrue: [
			html form: [
				html select
					size: 10;
					disabled: true;
					list: #()]]
		ifFalse:[
			html form: [
					self flag: #smell:onChange:.
					html select
						size: 10;
						onChange: 'this.form.submit()';
						list: aList;
						selected: (listIndex > 0 ifTrue: [aList at: listIndex] ifFalse: []);
						callback: [ :item |
							self model
								perform: (aSelector , 'Selection:') asSymbol
								with: (aList indexOf: item) ]]]