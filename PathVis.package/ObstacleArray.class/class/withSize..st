initialize
withSize: aSize
	|obsArray|
	obsArray := self new.
	obsArray size: aSize.
	obsArray array: (Array new: aSize * aSize).
	1 to: aSize * aSize do: [ :i |
			obsArray array 
				at: i
				put: false.
	 ].

	obsArray generateObstacles.
	
	^obsArray.