adding
addCategory: aCategory
	categories asOrderedCollection add: aCategory.
	self needRebuild: false.
	self initialize.
	self buildWithSpec.