running
prepare: aData
	grid := Grid withSize: (self getWidthAndHeight: aData) x.
	self paintObstaclesFrom: aData.