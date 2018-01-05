generators
generateObstacles
	1 to: ((self size * 5  to: self size * 7) atRandom) do: [ :i |
		|xRand yRand|
		xRand := (1 to: self size - 1) atRandom.
		yRand := (0 to: self size - 1) atRandom.
		self generateObstacleAtX: xRand Y: yRand
		].
