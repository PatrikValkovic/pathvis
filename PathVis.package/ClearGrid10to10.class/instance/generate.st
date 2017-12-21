generating
generate
	| nodes edges edge |
	edges := OrderedCollection new.
	nodes := Array new: self gridSize * self gridSize.
	0 to: self gridSize - 1 do: [ :row |
		0 to: self gridSize - 1 do: [ :column |
			nodes 
				at: row * self gridSize + column + 1 
				put: (self nodeClass newWithAutoId pos: (row+1)@(column+1)). 	
		]
	 ].
	1 to: self gridSize * self gridSize do: [ :index | 
		|n| 
		n := nodes at: index.
		"up"
		index > self gridSize ifTrue: [ 
			edge := self edgeClass from: n to: (nodes at: index - self gridSize).
			edges add: edge.
		].
		"down"
		index < ((self gridSize - 1) * self gridSize + 1) ifTrue: [ 
			edge := self edgeClass from: n to: (nodes at: index + self gridSize).
			edges add: edge.
		].
		"left"
		(index \\ self gridSize) ~= 1 ifTrue: [ 
			edge := self edgeClass from: n to: (nodes at: index - 1).
			edges add: edge.
		].
		"right"
		(index \\ self gridSize) ~= 0 ifTrue: [ 
			edge := self edgeClass from: n to: (nodes at: index + 1).
			edges add: edge.
		].
	].
	^ GraphContainer new 
		addNodes: nodes
		andEdges: edges;
		start: (nodes at: 1);
		end: (nodes at: self gridSize * self gridSize);
		yourself. 