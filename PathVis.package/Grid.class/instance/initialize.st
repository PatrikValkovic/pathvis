initialization
initialize
	| windowSize |
	super initialize.
	window := BlSpace new.
	window title: 'Pathvis - Grid'.
	space := GridSpace new.
	
	windowSize := (space size * GridElement diameter) + (space size * GridSpace spacing) + GridSpace spacing.
	
	window root addChild: space yourself.
	window extent: windowSize@windowSize.
	window show.