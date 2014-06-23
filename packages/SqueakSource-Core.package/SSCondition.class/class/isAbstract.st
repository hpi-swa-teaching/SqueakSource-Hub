as yet unclassified
isAbstract

	^ super isAbstract or: [
		self name asSymbol = #SSCondition]