generating
generate
	| nodes edges edge obstaclesArray start end|
	start := 1.
	end := self gridSize * self gridSize.
	edges := OrderedCollection new.
	obstaclesArray := ObstacleArray withSize: self gridSize.
	"generateObstaclesArray can put obstacle at start/end"
	self fixObstaclesArray: obstaclesArray array Start: start end: end.
	nodes := self generateNodeArray: obstaclesArray array.
	
	1 to: self gridSize * self gridSize do: [ :index | 
		(obstaclesArray array at: index) ifFalse: [  
			|n| 
			n := nodes at: index.
			"up"
			index > self gridSize ifTrue: [ 
				(obstaclesArray array at: index - self gridSize) ifFalse: [  
					edge := self edgeClass from: n to: (nodes at: index - self gridSize).
					edges add: edge.
				].
			].
			"down"
			index < ((self gridSize - 1) * self gridSize + 1) ifTrue: [ 
				(obstaclesArray array at: index + self gridSize) ifFalse: [  
					edge := self edgeClass from: n to: (nodes at: index + self gridSize).
					edges add: edge.
				].
			].
			"left"
			(index \\ self gridSize) ~= 1 ifTrue: [ 
				(obstaclesArray array at: index - 1) ifFalse: [  
					edge := self edgeClass from: n to: (nodes at: index - 1).
					edges add: edge.
				].
			].
			"right"
			(index \\ self gridSize) ~= 0 ifTrue: [ 
				(obstaclesArray array at: index + 1) ifFalse: [  
					edge := self edgeClass from: n to: (nodes at: index + 1).
					edges add: edge.
				].
			].
		].
	].
	^ GraphContainer new 
		addNodes: nodes
		andEdges: edges;
		start: (nodes at: start);
		end: (nodes at: end);
		yourself. 