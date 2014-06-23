rendering
renderDiffyOn: html
	| url |
	(url := self version diffyUrl: self project)
		ifNotNil: [
			html tableRow: [
				html tableData
					with: 'Monticello Difference:'.
				html tableData: [
					html anchor url: url; with: (url path last)]]].