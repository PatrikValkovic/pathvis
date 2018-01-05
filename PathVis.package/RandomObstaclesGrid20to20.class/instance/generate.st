generating
generate
	|obstacleArray|
	obstacleArray := ObstacleArray withSize: self gridSize.
	
	^self generateGraphWithObstacles: obstacleArray.