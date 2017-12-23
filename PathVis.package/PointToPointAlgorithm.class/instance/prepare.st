running
prepare
	self 
		startNode: self graph start;
		endNode: self graph end.
	self notify markAsStart: self startNode.
	self notify markAsEnd: self endNode.