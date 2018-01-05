generators
drawHorLineFromPoint: aPointFrom toPoint: aPointTo
	|curX|
	curX := aPointFrom x.
	[curX <= aPointTo x] whileTrue: [ 
		 	self array at: aPointFrom y * self size + curX + 1 put: true.
			curX := curX + 1.
		 ].
	