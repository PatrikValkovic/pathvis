tests
testRechableOnRectangle
	|c alg|
	c := NoSpaceGenerator rectLoop.
	alg := DFS from: (c nodes at: 1) to: (c nodes at: 3).
	self assert: alg run