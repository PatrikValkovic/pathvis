tests
testRechableOnRectangle
	|nodes alg|
	nodes := Algorithm newRectGraph .
	alg := DFS from: (nodes at: 1) to: (nodes at: 3).
	self assert: alg run