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
	nodes := (1 to: 5) collect: [ :each | Node newWithAutoId  ].
	edges := (1 to: 4) collect: [ :each | Edge newWithAutoId  ].
	
	(edges at: 1) left: (nodes at: 1);
						right: (nodes at: 2).
						
	(edges at: 2) left: (nodes at: 2);
						right: (nodes at: 3).
						
	(edges at: 3) left: (nodes at: 3);
						right: (nodes at: 4).
						
	(edges at: 4) left: (nodes at: 4);
						right: (nodes at: 1).		
	^ nodes.		
	
	