running
createCategoryForAlgorithms
	algorithmsCategory := MenuCategory new label: (Label withText: 'Algorithms'); yourself.
	Algorithm readySubclasses
		collect: [ :each |
			Button withText: each className andEvent: [ self algorithm: each ] 
		]
		thenDo: [ :each |
			algorithmsCategory addButton: each.
		].
	^ algorithmsCategory.
	