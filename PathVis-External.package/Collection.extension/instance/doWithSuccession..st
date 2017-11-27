*PathVis-External
doWithSuccession: aBlock
	|c|
	c := 0.
	self do: [ :each |
		aBlock value: each value: c.
		c := c + 1.	
	 ]
	