accessing
oppositeTo: aNode
	aNode = self from ifTrue: [
		^ self to.
	 ].
	UnreachableError signal.