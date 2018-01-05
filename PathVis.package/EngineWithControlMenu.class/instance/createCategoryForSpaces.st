running
createCategoryForSpaces
	spaceCategory := MenuCategory new label: (MenuLabel withText: 'Spaces'); yourself.
	Space availableSpaces 
		collect: [ :each |
			MenuButton withText: each spaceName andEvent: [ self space: each ] andToggleable: true
		]
		thenDo: [ :each |
			spaceCategory addButton: each.
		].
	^ spaceCategory.
	