generators
moveCheckSidesX: aX Y: anY
	|obs|
	obs := 0.
		
	(aX + 1 <= (self size - 1)) ifTrue: [ 
		(self array at: anY * self size + aX + 1) ifTrue: [ 
				obs := obs + 1.
		 	].
	].

	(aX - 1 >= 0) ifTrue: [
		(self array at: (anY * self size + (aX - 1))) ifTrue: [ 
			obs := obs + 1.
		 ].
	].

	(anY + 1 <= (self size - 1)) ifTrue: [ 
		(self array at: (anY + 1) * self size + aX) ifTrue: [ 
			obs := obs + 1.
		 ].
	].
	
	(anY - 1 >= 0) ifTrue: [
		(self array at: (anY - 1) * self size + aX) ifTrue: [ 
			obs := obs + 1.
		 ].
	].

	^obs.