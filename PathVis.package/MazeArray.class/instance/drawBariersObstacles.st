generators
drawBariersObstacles
	|firstVerLineX secondVerLineX thirdVerLineX|
			
	firstVerLineX := 3.
	secondVerLineX := 8.
	thirdVerLineX := 12.
	self drawVerLineFromPoint: firstVerLineX @0 toPoint: firstVerLineX @(self size - 1).
	self drawVerLineFromPoint: secondVerLineX @1 toPoint: secondVerLineX @(self size - 1).
	self drawVerLineFromPoint: thirdVerLineX @1 toPoint: thirdVerLineX @(self size - 1).
	self clearObstacleAtPoint: firstVerLineX@2.
	self clearObstacleAtPoint: firstVerLineX@8.
	self clearObstacleAtPoint: firstVerLineX@13.
	
	self clearObstacleAtPoint: secondVerLineX@1.
	self clearObstacleAtPoint: secondVerLineX@2.
	self clearObstacleAtPoint: secondVerLineX@6.
	self clearObstacleAtPoint: secondVerLineX@8.	
	self clearObstacleAtPoint: secondVerLineX@13.	
	
	self clearObstacleAtPoint: thirdVerLineX@2.
	self clearObstacleAtPoint: thirdVerLineX@3.
	self clearObstacleAtPoint: thirdVerLineX@8.
	self clearObstacleAtPoint: thirdVerLineX@13.		