tests
testEdgeAddOnEmpty
	|e|
	e := Edge new addNode: Node new; yourself .
	self assert: (e left isNotNil or: e right isNotNil)