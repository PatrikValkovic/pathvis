generators
moveAtX: aX atY: anY

	(aX > (self size - 1) or: aX < 0) ifTrue: [ 
		^false.
		 ]. 
	(anY > (self size - 1) or: anY < 0) ifTrue: [ 
		^false.
		 ].
	(self canMoveAtX: aX atY: anY) ifFalse: [ 
		^false.
		 ]	.
	self array at: anY * (self size - 1) + aX put: true.
	^true.