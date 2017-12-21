initialization
prepareLayout
	self layout: (BlGridLayout horizontal cellSpacing: self class spacing).
	self constraintsDo: [ :aLayoutConstrants |
			aLayoutConstrants horizontal fitContent.
			aLayoutConstrants vertical fitContent ].
	self layout columnCount: self size.
	
	1 to: (self size * self size) do: [ :i |
		| newNode |
		newNode := GridElement new.
		self addChild: newNode.
		nodes add: newNode ].