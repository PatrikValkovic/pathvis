tests
testAddFromOneEdge
	|n e|
	n := Node new.
	e := Edge from: n to: Node new. 
	self assert: n edges size equals: 1.
	self assert: n edges first equals: e. 