initialize
withSize: aNumber
	| grid |
	grid := self basicNew initialize.
	grid space: (GridWorkspace withSize: aNumber).
	grid createWindow.
	
	^grid