rendering
renderDiffOn: html
	| url |
	url := self version diffUrl: self project.
	html tableRow: [
		html tableData
			with: 'Diff:'.
		html tableData: [
			html anchor url: url; with: (url path last)]].