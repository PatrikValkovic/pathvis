accessing
readySubclasses
	^ self allSubclasses select: [ :class | 
		class readyToUse
	 ]