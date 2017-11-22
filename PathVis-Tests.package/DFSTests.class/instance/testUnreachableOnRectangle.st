tests
testUnreachableOnRectangle
	|c alg|
	c := NoSpaceGenerator separatedPoints.
	alg := DFS from: (c nodes at: 1) to: (c nodes at: 2).
	self assert: alg run not