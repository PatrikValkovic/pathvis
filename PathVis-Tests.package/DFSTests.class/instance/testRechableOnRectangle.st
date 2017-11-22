tests
testRechableOnRectangle
	|c alg|
	c := RectLoopGenerator new generate.
	alg := DFS from: (c nodes at: 1) to: (c nodes at: 3).
	self assert: alg run