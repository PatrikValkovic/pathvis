tests
testEdgeBothNodes
	|e|
	e := Edge new addNode: Node new;
	              addNode: Node new; yourself .
	self assert: (e left isNotNil and: e right isNotNil)