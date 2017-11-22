tests
testEdgeAddOnEmpty
	|e|
	e := Edge new addNode: Node new; yourself .
	self assert: (e from isNotNil or: e to isNotNil)