tests
testEdgeBothNodes
	|e|
	e := Edge new addNode: Node new;
	              addNode: Node new; yourself .
	self assert: (e from isNotNil and: e to isNotNil)