adding
addEdges: edgesParam
	edgesParam do: [ :each | 
		self addEdge: each.	
	]
	