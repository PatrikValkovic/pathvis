generating
generate


	"
	1    2
	"

	|nodes|
	nodes := (1 to: 2) collect: [ :each | self nodeClass newWithAutoId  ].
	^ GraphContainer new 
		addNodes: nodes;
		start: (nodes at: 1);
		end: (nodes at: 2);
		yourself.
	