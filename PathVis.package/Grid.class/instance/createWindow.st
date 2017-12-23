interface building
createWindow
	| windowSize |
	
		windowSize := (space size * GridElement diameter) + (space size * GridWorkspace spacing) + GridWorkspace spacing.
	
	window := BlSpace new.
	window title: 'Pathvis - Grid'.
	
	window root addChild: space yourself.
	window extent: windowSize@windowSize.
	window show.