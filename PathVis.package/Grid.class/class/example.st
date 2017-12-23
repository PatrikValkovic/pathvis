tests
example
	| grid |
	grid := self withSize: 15.
	grid setColor: Color blue atPoint: 2@3.
	grid setColor: Color blue atPoint: 2@5.
	grid setColor: Color blue atPoint: 1@1.
	
	grid hideNode: 4@4; hideNode: 5@4; hideNode: 5@6;
	hideNode: 4@5; hideNode: 4@3.
	
	grid setColor: Color lightMagenta atPoint: 4@4.
	grid showNode: 4@4.