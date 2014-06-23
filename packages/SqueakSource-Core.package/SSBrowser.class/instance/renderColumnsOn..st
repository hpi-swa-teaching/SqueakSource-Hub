rendering
renderColumnsOn: html
	| columns |
	columns := #(category class protocol method).
	html table
		with: [
		html tableRow: [
			columns do: [ :each | 
				html tableData: [self renderColumn: each on: html ] ] ] ]