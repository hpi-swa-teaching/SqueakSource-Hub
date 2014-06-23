comparing
= other

	^ other class = self class and: [
	   other boundary = self boundary and: [
	   other comparator = self comparator]]