accessing
example
	| grid |
	grid := self new.
	grid space setColor: Color blue atX: 1 atY: 1.
	grid space setColor: Color red atX: 10 atY: 10.
	
	^ grid