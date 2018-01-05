generators
drawInsideSkeletonObstacles
	|firstVerLineX secondVerLineX firstHorLineY secondHorLineY|
	firstHorLineY := 5.
	secondHorLineY := 9.
	
	self drawHorLineFromPoint: 1@firstHorLineY  toPoint: (self size - 1)@firstHorLineY.
	self drawHorLineFromPoint: 0@secondHorLineY  toPoint: (self size - 1)@secondHorLineY.
	self clearObstacleAtPoint: 2@firstHorLineY.
	self clearObstacleAtPoint: 9@firstHorLineY.
	self clearObstacleAtPoint: 11@firstHorLineY.
	
	self clearObstacleAtPoint: 2@secondHorLineY.
	self clearObstacleAtPoint: 9@secondHorLineY.
	self clearObstacleAtPoint: 14@secondHorLineY.	
		
		
	firstVerLineX := 6.
	secondVerLineX := 10.
	self drawVerLineFromPoint: firstVerLineX @0 toPoint: firstVerLineX @(self size - 1).
	self drawVerLineFromPoint: secondVerLineX @1 toPoint: secondVerLineX @(self size - 1).
	self clearObstacleAtPoint: firstVerLineX@10.
	self clearObstacleAtPoint: firstVerLineX@7.
	
	self clearObstacleAtPoint: secondVerLineX@3.
