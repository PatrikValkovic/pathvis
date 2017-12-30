generating
generateNodeArray: anObstacleArray
	|array|
	array := Array new: self gridSize * self gridSize.
	0 to: self gridSize - 1 do: [ :row |
		0 to: self gridSize - 1 do: [ :column |
			array 
				at: row * self gridSize + column + 1 
				put: (self nodeClass newWithAutoId pos: (row+1)@(column+1)).			
			(anObstacleArray at: row * self gridSize + column + 1) ifTrue: [
				(array 
					at: row * self gridSize + column + 1)
					type: 1. 
				].
		]
	 ].
	^array.