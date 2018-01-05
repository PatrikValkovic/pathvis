private
paintObstaclesFrom: aData
	|axis|
	axis := self getWidthAndHeight: aData.
	0 to: axis y - 1 do: [ :row |
		0 to: axis x - 1 do: [ :column |
			(((aData nodes at: row * axis y + column + 1) type) == 1) ifTrue: [ 
				self colorAt:(row + 1)@(column + 1) to: Color black.				
			] 	
		]
	].