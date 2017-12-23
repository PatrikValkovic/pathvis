running
createCategoryForGenerators
	generatorsCategory := MenuCategory new label: (Label withText: 'Generators'); yourself.
	self space generators
		collect: [ :each |
			Button withText: each className andEvent: [ self generator: each ] 
		]
		thenDo: [ :each |
			generatorsCategory addButton: each.
		].
	^ generatorsCategory.
	