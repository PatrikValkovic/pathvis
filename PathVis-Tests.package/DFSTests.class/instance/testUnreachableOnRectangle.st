tests
testUnreachableOnRectangle
	|nodes alg|
	nodes := Algorithm newRectGraph .
	alg := DFS from: (nodes at: 1) to: (nodes at: 5).
	self assert: alg run not