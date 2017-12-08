drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: self elementColor;
		path: (aCanvas shape ellipse: self boundsInLocal);
		draw.