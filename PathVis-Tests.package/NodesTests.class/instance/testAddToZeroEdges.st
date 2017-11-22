tests
testAddToZeroEdges
	|n|
	n := Node new.
	Edge from: Node new to: n. 
	self assert: n edges size equals: 0 