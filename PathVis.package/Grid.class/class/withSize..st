initialize
withSize: aNumber
	| grid |
	grid := self basicNew initialize.
	grid space: (GridSpace withSize: aNumber).
	grid createWindow.
	
	^grid