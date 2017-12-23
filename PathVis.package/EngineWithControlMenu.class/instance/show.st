running
show
	menu := PathVisWindow on: OrderedCollection new.
	menu addCategory: self createCategoryForControl.
	menu addCategory: self createCategoryForSpaces.
	menu addCategory: self createCategoryForAlgorithms.
	menu addCategory: self createCategoryForGenerators.
	menu openWithSpec.