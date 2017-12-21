running
createCategoryForSpaces
	spaceCategory := MenuCategory new label: (Label withText: 'Spaces'); yourself.
	Space availableSpaces 
		collect: [ :each |
			Button withText: each spaceName andEvent: [ self space: each ] 
		]
		thenDo: [ :each |
			spaceCategory addButton: each.
		].
	^ spaceCategory.
	