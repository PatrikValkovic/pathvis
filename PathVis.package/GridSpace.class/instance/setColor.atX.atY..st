action
setColor: aColor atX: aNumberX atY: aNumberY
	| index |
	
	index := (self size * (aNumberY - 1)) + aNumberX.
	(nodes at: index) elementColor: aColor.
	
	self invalidate.