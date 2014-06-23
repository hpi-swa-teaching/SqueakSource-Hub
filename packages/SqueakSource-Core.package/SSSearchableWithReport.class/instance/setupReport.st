initialize
setupReport

	self report: (SSReport new
		rowPeriod: 1;
		batchSize: self repository batchSize;
		rows: self all).
	self addColumnsToReport