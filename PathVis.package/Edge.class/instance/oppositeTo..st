accessing
oppositeTo: aNode
	aNode = self to ifTrue: [
		^ self from.
	 ].
	aNode = self from ifTrue: [ 
		^ self to.	
	 ].
	Error signal. "TODO"