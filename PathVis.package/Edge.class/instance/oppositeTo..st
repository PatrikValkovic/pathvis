accessing
oppositeTo: aNode
	aNode = self from ifTrue: [
		^ self to.
	 ].
	Error signal. "TODO"