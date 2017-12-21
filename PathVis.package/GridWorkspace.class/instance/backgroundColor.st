accessing
backgroundColor
	backgroundColor isNil
	ifTrue: [ backgroundColor := Color white ].
	^ backgroundColor