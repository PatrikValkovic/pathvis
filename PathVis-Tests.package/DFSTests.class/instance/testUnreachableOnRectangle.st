tests
testUnreachableOnRectangle
	|c alg|
	c := SeparatedPointsGenerator new generate.
	alg := DFS onGraph: c.
	alg from: (c nodes at: 1); to: (c nodes at: 2).
	alg notificator: TestNotificator new.
	self assert: alg run not