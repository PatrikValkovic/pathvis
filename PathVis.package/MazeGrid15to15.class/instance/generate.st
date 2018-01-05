generating
generate
	|mazeArray|
	mazeArray := MazeArray withSize: self gridSize.
	
	^self generateGraphWithObstacles: mazeArray.