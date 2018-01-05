generators
drawFrameObstacles
	self drawHorLineFromPoint: 1@0 toPoint: (self size - 1)@0.
	self drawHorLineFromPoint: 0@(self size- 1) toPoint: (self size - 1)@(self size - 1).
	
	self drawVerLineFromPoint: 1@0 toPoint: 1@(self size - 1).
	self drawVerLineFromPoint: 0@1 toPoint: 0@(self size - 1).