accessing
paintObstacles: aNodeArray
	0 to: self size - 1 do: [ :row |
		0 to: self size - 1 do: [ :column |
			(((aNodeArray at: row * self size + column + 1) type) == 1) ifTrue: [ 
				self setColor: Color black atX: row + 1  atY: column + 1.				
			] 	
		]
	].