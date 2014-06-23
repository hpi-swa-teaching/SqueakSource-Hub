initialization
setModel: aModel
	super setModel: aModel.
	batchedList := SSBatchedList new
		batchSize: 10;
		items: self sortedItems;
		yourself