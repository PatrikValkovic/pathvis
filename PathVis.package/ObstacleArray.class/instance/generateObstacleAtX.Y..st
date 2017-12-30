generators
generateObstacleAtX: aX Y: anY
	|rand curX curY dirX dirY dd end|
	rand := (1 to: 100) atRandom.
	dirX := 1.
	dirY := 0.
	curX := aX.
	curY := anY.
	end := 0. 
	[rand > 10 and: end == 0] whileTrue: [ 
		(self moveAtX: curX atY: curY) ifFalse: [
				end := 1.
			].
		(rand > 70) ifFalse: [ 
				curX := curX + dirX.
				curY := curY + dirY.
			 ] ifTrue: [
					"change direction"
					dd := dirX.
					dirX := dirY.
					dirY := dd.
				(rand > 85) ifTrue: [   
					(dirX == 0) ifTrue: [ 
							dirX := dirX * -1.
						 ] ifFalse: [ 
							dirY := dirY * -1.
						 ].
				]
			 ].
		 	rand := (1 to: 100) atRandom.
		 ].