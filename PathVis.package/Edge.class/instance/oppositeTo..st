adding
oppositeTo: aNode
	aNode = left ifTrue: [
		^ right.
	 ].
	aNode = right ifTrue: [ 
		^ left.	
	 ].
	Error signal. "TODO"