generators
canMoveAtX: aX atY: anY
	|obs|
	obs := 0.
	
	(aX > (self size - 1) or: aX < 0) ifTrue: [ 
			^false.
		 ]. 
	
	(anY > (self size - 1) or: anY < 0) ifTrue: [ 
			^false.
		 ].
	
	((anY - 1) * self size + aX - 1 <= 0 or: ((aX + anY) = 0)) ifTrue: [ 
			^false.		
		 ].	
	
	obs := obs + (self moveCheckSidesX: aX Y: anY).
	obs := obs + (self moveCheckCornersX: aX Y: anY).
	 
	(obs > 1) ifTrue: [ 
		^false.
		 ].		
		
	^true.