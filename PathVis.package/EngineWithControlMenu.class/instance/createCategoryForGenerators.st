running
createCategoryForGenerators
	generatorsCategory := MenuCategory new label: (MenuLabel withText: 'Generators'); yourself.
	self space generators
		collect: [ :each |
			MenuButton withText: each className andEvent: [ self generator: each ] andToggleable: false
		]
		thenDo: [ :each |
			generatorsCategory addButton: each.
		].
	^ generatorsCategory.
	