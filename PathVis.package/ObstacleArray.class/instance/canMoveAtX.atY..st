private
canMoveAtX: aX atY: anY
	|obs|
	obs := 0.
	obs := obs + (self moveCheckSidesX: aX Y: anY).
	obs := obs + (self moveCheckCornersX: aX Y: anY).
	 
	(obs > 1) ifTrue: [ 
		^false.
		 ].		
		
	^true.