running
createCategoryForAlgorithms
	algorithmsCategory := MenuCategory new label: (MenuLabel withText: 'Algorithms'); yourself.
	Algorithm readySubclasses
		collect: [ :each |
			MenuButton withText: each className andEvent: [ self algorithm: each ] andToggleable: true
		]
		thenDo: [ :each |
			algorithmsCategory addButton: each.
		].
	^ algorithmsCategory.
	