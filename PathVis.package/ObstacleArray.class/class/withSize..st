initialize
withSize: aSize
	|obsArray|
	obsArray := self new.
	obsArray size: aSize.
	obsArray array: (Array new: aSize * aSize).
	0 to: aSize - 1 do: [ :row |
		0 to: aSize - 1 do: [ :column |
			obsArray array 
				at: row * aSize + column + 1
				put: false.
		]
	 ].

	obsArray generateObstacles.
	
	^obsArray.