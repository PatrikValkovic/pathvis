messages
mark: aNode as: aMark
	self step.
	aMark = PathvisMarks start ifTrue: [ 
		self renderer colorAt: aNode pos to: Color green.
	 ].
	aMark = PathvisMarks end ifTrue: [ 
		self renderer colorAt: aNode pos to: Color red.
	 ].
	aMark = PathvisMarks working ifTrue: [ 
		self renderer colorAt: aNode pos to: Color blue.
	 ].
	aMark = PathvisMarks following  ifTrue: [ 
		self renderer colorAt: aNode pos to: Color yellow.
	 ].
	aMark = PathvisMarks visited ifTrue: [ 
		self renderer colorAt: aNode pos to: Color lightGreen.
	 ].