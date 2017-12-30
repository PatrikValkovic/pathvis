running
prepare: aData
	grid := Grid withSize: (self getWidthAndHeight: aData) x.
	grid space paintObstacles: aData nodes.