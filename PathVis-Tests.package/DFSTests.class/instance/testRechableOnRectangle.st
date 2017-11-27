tests
testRechableOnRectangle
	|c alg|
	c := RectLoopGenerator new generate.
	alg := DFS from: (c nodes at: 1) to: (c nodes at: 3).
	alg notificator: TestNotificator new.
	self assert: alg run