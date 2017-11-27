tests
testOpposite
	|n1 n2 e|
	n1 := Node new.
	n2 := Node new.
	e := Edge from: n1 to: n2 .
	self should: [e oppositeTo: n2] raise: UnreachableError. 