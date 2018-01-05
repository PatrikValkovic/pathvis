generators
drawVerLineFromPoint: aPointFrom toPoint: aPointTo
	|curY|
	curY := aPointFrom y.
	[curY <= aPointTo y] whileTrue: [ 
		 	self array at: curY * self size + aPointTo x put: true.
			curY := curY + 1.
		 ].
	