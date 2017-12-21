initialize
withSize: aNumber
	| grid |
	grid := self new.
	grid space: (GridSpace withSize: aNumber).
	grid createWindow.
	
	^grid