generators
moveCheckCornersX: aX Y: anY
	|obs|
	obs := 0.
	
	(anY + 1 <= (self size - 1) and: (aX + 1 <= (self size - 1))) ifTrue: [
		(self array at: (anY + 1) * self size + aX + 1) ifTrue: [ 
			obs := obs + 3.
		 ].	
	].

	(anY + 1 <= (self size - 1) and: (aX - 1 >= 0)) ifTrue: [
		(self array at: (anY + 1) * self size + aX - 1) ifTrue: [ 
		obs := obs + 3.
		 ].	
	].
				
	(anY - 1 >= 0 and: (aX - 1 >= 0)) ifTrue: [				
		(self array at: (anY - 1) * self size + aX - 1) ifTrue: [ 
			obs := obs + 3.
		 ].	
	].
		
	(anY - 1 >= 0 and: (aX + 1 <= (self size - 1))) ifTrue: [			
		(self array at: (anY - 1) * self size + aX + 1) ifTrue: [ 
			obs := obs + 3.
		 ].	
	].

	^obs.