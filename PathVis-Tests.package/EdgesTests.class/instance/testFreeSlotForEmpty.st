tests
testFreeSlotForEmpty
	|e|
	e := Edge new.
	self assert: e freeSlotName  equals: #from. 