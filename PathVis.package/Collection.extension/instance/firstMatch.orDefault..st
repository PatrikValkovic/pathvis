*PathVis
firstMatch: aBlock orDefault: aValue
	|i|
	i := self findFirst: aBlock.
	i isZero isTrue: [ ^ aValue ]
				else: [ ^ self at: i ].