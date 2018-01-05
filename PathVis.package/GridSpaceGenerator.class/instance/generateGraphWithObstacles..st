generating
generateGraphWithObstacles: anObstacleArray
	| nodes edges edge start end|
	((0 to: 1) atRandom == 0) ifTrue:[
				start := self graphStart.
				end := self graphEnd.
		] ifFalse:[
				start := self graphEnd.
				end := self graphStart.
		].
	
	edges := OrderedCollection new.
	"generateObstaclesArray can put obstacle at start/end"
	nodes := self generateNodeArray: anObstacleArray array.
	self fixObstaclesArray: anObstacleArray Start: start end: end.
	
	1 to: self gridSize * self gridSize do: [ :index | 
		(anObstacleArray array at: index) ifFalse: [  
			|n| 
			n := nodes at: index.
			"up"
			index > self gridSize ifTrue: [ 
				(anObstacleArray array at: index - self gridSize) ifFalse: [  
					edge := self edgeClass from: n to: (nodes at: index - self gridSize).
					edges add: edge.
				].
			].
			"down"
			index < ((self gridSize - 1) * self gridSize + 1) ifTrue: [ 
				(anObstacleArray array at: index + self gridSize) ifFalse: [  
					edge := self edgeClass from: n to: (nodes at: index + self gridSize).
					edges add: edge.
				].
			].
			"left"
			(index \\ self gridSize) ~= 1 ifTrue: [ 
				(anObstacleArray array at: index - 1) ifFalse: [  
					edge := self edgeClass from: n to: (nodes at: index - 1).
					edges add: edge.
				].
			].
			"right"
			(index \\ self gridSize) ~= 0 ifTrue: [ 
				(anObstacleArray array at: index + 1) ifFalse: [  
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