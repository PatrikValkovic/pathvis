operations
inc
	| val |
	"TODO weird here"
	current isNil isTrue: [ 
		self initialize 
	 ].
	val := current.
	current := current + 1.
	^ val