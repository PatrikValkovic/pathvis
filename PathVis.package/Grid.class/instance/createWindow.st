interface building
createWindow
	| windowSize |
	
		windowSize := (space size * GridElement diameter) + (space size * GridSpace spacing) + GridSpace spacing.
	
	window := BlSpace new.
	window title: 'Pathvis - Grid'.
	
	window root addChild: space yourself.
	window extent: windowSize@windowSize.
	window show.