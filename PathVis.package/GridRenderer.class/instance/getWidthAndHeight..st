private
getWidthAndHeight: aData
	| tmp |
	tmp := 0@0.
	aData nodes do: [ :each |
		each pos x > tmp x ifTrue: [ tmp := each pos x @ tmp y ].
		each pos y > tmp y ifTrue: [ tmp := tmp x @ each pos y ].
	 ].
	^ tmp.