action
hideNode: aPoint
	| index |
	
	index := (space size * (aPoint y - 1)) + aPoint x.
	(space nodes at: index) hide.