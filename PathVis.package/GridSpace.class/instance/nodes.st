accessing
nodes
	nodes isNil
		ifTrue: [ nodes := OrderedCollection new ].
	^ nodes