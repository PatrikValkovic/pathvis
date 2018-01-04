generators
drawArray

	| children el|
	
	children := (1 to: (self size raisedTo: 2)) collect: [ :i |
		|color|
		color := Color white.
		(self array at: i) ifTrue: [
				color	:= Color black.
			  ].
		
		BlElement new
			constraintsDo: [ :c |
					c horizontal matchParent.
					c vertical matchParent.
					c grid 
				];
			
				background: color;
				yourself 
			].

	el := BlElement new
		layout: (BlGridLayout new columnCount: self size; rowCount: self size; cellSpacing: 2; yourself);
		constraintsDo: [ :c |
				c horizontal exact: 350.
				c vertical exact: 350 
			];
		relocate: 0 @ 0;
		background: Color black;
		addChildren: children;
		yourself.

	el forceLayout.
	
	^ el.