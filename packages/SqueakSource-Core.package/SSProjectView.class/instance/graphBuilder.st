actions
graphBuilder

	"Disabled , still"
	"<actionNamed: 'Ancestory' > "
	"(self model isMember: self session user allowedTo: SSAccessPolicy read)
			ifTrue: [
				SSGraphBuilder formats , #(pdf) do: [ :each |
					stream nextPutAll: (Array
						with: 'Ancestory ', each asUppercase
						with: '/', self project id,'/'  ,SSGraphBuilder filename, '.', each) ] ]"