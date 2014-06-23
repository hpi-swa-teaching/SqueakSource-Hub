rendering
renderExpandOn: html

	| action |
	action := expand
		ifTrue: ['collapse']
		ifFalse: ['expand'].
	html text: '[ '.
	html anchor url: '?view=', action; with: action.
	html text: ' ]'; break; break.