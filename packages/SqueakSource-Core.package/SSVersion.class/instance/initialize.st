initialization
initialize
	super initialize.
	properties := GRPlatform current reducedConflictDictionary new.
	downloadStatistics := GRPlatform current reducedConflictDictionary new.
	"prime the downloadStats with standard downloadTypes to avoid commit conflicts in GemStone"
	#(#Squeak #Web) do: [:downloadType | self downloadCountForType: downloadType ].
	release := deleted := false.
	