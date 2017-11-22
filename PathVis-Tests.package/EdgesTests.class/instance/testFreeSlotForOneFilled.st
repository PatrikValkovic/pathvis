tests
testFreeSlotForOneFilled
	|e|
	e := Edge new addNode: Node new.
	self assert: e freeSlotName  equals: #to. 