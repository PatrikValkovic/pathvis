running
show
	menu := PathVisWindow on: OrderedCollection new.
	menu addCategory: self createCategoryForSpaces.
	menu addCategory: self createCategoryForGenerators.
	menu addCategory: self createCategoryForAlgorithms.
	menu openWithSpec.
	"TODO implementation"