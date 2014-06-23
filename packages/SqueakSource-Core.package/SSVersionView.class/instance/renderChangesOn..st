rendering
renderChangesOn: html
	| url |
	(url := self version changesUrl: self project)
		ifNotNil: [
			html tableRow: [
				html tableData
					with: 'Changeset:'.
				html tableData: [
					html anchor url: url; with: (url path last)]]].