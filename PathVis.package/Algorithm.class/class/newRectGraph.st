instance creation
newRectGraph

"
0--0--1
|     |
3     1
|     |
3--2--2
"

	|nodes edges|
	nodes := (1 to: 4) collect: [ :each | Node new ].
	edges := (1 to: 4) collect: [ :each | Edge new ].
	
	(edges at: 1) addNode: (nodes at: 1);
						addNode: (nodes at: 2).
						
	(edges at: 2) addNode: (nodes at: 2);
						addNode: (nodes at: 3).
						
	(edges at: 3) addNode: (nodes at: 3);
						addNode: (nodes at: 4).
						
	(edges at: 4) addNode: (nodes at: 4);
						addNode: (nodes at: 1).		
								
	^ nodes.		
	
	