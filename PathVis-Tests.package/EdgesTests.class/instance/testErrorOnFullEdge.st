tests
testErrorOnFullEdge
	|e|
	e := Edge new addNode: Node new;
	              addNode: Node new; yourself .
	self should: [e addNode: Node new.] raise: NoSlotAvailableError.