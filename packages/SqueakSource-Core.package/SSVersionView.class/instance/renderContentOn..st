rendering
renderContentOn: html
	html heading: self version title , (self version isRelease
		ifTrue: [ ' (Release)' ]
		ifFalse: [ String new ]).
	html table
		class: 'table';
		class: 'table-condensed';
		with: [
			self renderFilenameOn: html.
			self renderAuthorOn: html.
			self renderTimestampOn: html.
			self renderUUIDOn: html.	
			self
				renderPackageList: self version ancestors 
				label: 'Ancestors:' on: html.
			self
				renderPackageList: self version dependencies 
				label: 'Dependencies:' on: html.
			self renderReleaseOn: html.
			self renderMessageOn: html.
			self renderDiffyOn: html.
			self renderDiffOn: html.
			self renderChangesOn: html.
			self renderStatisticsOn: html ].
	self renderButtonsOn: html.
	self renderBlessingInfoOn: html.