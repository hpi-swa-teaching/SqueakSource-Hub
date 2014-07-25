request-handling
getProjectListingOfOwner: login
	<get>
	<path: '/{login}/'>
	<produces: 'text/html'>
	
	| currentMember otherMember projects |
	currentMember := self currentMemberOrRespondInvalid.
	otherMember := SSRepository current memberAt: login ifAbsent: [self respondNotFound].
	
	projects := SSRepository current visibleProjectsTo: currentMember select: [:each |
		otherMember projects includes: each].
	^ String streamContents: [:str |
			str nextPutAll: '<html><body>'.
			projects do: [:each |
				str 
					nextPutAll: '<a href="/mc/';
					nextPutAll: login;
					nextPut: $/;
					nextPutAll: each id;
					nextPutAll: '/main">';
					nextPutAll: each id;
					nextPutAll: '</a>';
					nextPutAll: '<br>'].
			str nextPutAll: '</body></html>'] 