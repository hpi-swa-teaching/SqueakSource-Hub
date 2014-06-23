rendering
renderAnalyticsOn: html
	| account |
	account := self repository googleAnalyticsAccount.
	account isEmptyOrNil ifFalse: [
		html script url: 'http://www.google-analytics.com/urchin.js'.
		html script: '_uacct = "', account, '"; urchinTracker();'].