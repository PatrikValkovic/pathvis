adding
removeCategory: aCategory
	categories asOrderedCollection remove: aCategory.
	self needRebuild: false.
	self initialize.
	self buildWithSpec.