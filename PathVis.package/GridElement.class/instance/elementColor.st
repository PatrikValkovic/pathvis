accessing
elementColor
	elementColor isNil
		ifTrue: [ elementColor := Color gray ].
	^ elementColor