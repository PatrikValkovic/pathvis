translating
generate


	"
	1--1->2
	^     |
	|     |
	4     2
	|     |
	|     V
	4<-3--3
	"

	|nodes edges|
	nodes := (1 to: 4) collect: [ :each | Node newWithAutoId  ].
	edges := (1 to: 4) collect: [ :each | Edge newWithAutoId  ].
	
	(edges at: 1) from: (nodes at: 1)
						to: (nodes at: 2).
						
	(edges at: 2) from: (nodes at: 2)
						to: (nodes at: 3).
						
	(edges at: 3) from: (nodes at: 3)
						to: (nodes at: 4).
						
	(edges at: 4) from: (nodes at: 4)
						to: (nodes at: 1).		
	^ GraphContainer new addEdges: edges andNodes: nodes; yourself.	
	