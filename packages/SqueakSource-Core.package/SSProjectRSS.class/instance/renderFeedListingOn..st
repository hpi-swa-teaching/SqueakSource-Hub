rendering
renderFeedListingOn: html
	html table
		with: [ 
			batchedList batch do: [ :each |
				html tableRow
					class: 'TabUnselected';
					with: [
						html tableData
							class: 'left';
							with: [ html anchor
								callback: [ self callOnParent: (SSVersionView 
									project: self model 
									version: each
									announcer: self announcer) ];
								with: [ html strong: each title ]].
						html tableData
							align: 'right';
							with: [
								html render: each author.
								html text: ', '.
								html render: each timestamp ] ].
				html tableRow: [
					html tableData
						colSpan: 3;
						with: [ html withLineBreaks: each message ] ].
				html tableRow: [
					html tableData
						colSpan: 3;
						with: [ html space ] ] ] ].
	batchedList maxPages > 1 ifTrue: [ 
		html render: batchedList ]