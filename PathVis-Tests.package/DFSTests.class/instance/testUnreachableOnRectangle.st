tests
testUnreachableOnRectangle
	|c alg|
	c := SeparatedPointsGenerator new generate.
	alg := DFS from: (c nodes at: 1) to: (c nodes at: 2).
	self assert: alg run not