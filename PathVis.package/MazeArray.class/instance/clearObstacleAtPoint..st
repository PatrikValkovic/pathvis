generators
clearObstacleAtPoint: aPoint
	self array at: aPoint y * self size + aPoint x put: false.
	