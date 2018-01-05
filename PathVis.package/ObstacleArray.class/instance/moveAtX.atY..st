generators
moveAtX: aX atY: anY
	(self canMoveAtX: aX atY: anY) ifFalse: [ 
			^false.
		 ]	.
	self array at: anY * self size + aX put: true.
	^true.