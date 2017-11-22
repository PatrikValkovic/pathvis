querying
availableSpaces
	^ self subclasses select: [ :class | 
		class readyToUse
	 ]