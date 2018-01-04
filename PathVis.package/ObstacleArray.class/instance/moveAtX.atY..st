generators
moveAtX: aX atY: anY

	(aX > (self size - 1) or: aX < 0) ifTrue: [ 
			^false.
		 ]. 
	
	(anY > (self size - 1) or: anY < 0) ifTrue: [ 
			^false.
		 ].
	
	((anY - 1) * self size + aX - 1 <= 0 or: ((aX + anY) = 0)) ifTrue: [ 
			^false.		
		 ].
	
	(self canMoveAtX: aX atY: anY) ifFalse: [ 
			^false.
		 ]	.
	self array at: anY * self size + aX put: true.
	^true.