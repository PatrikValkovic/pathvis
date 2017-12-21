setters
space: aSpace
	super space: aSpace.
	menu isNotNil ifTrue: [ 
		menu removeCategory: generatorsCategory.	
		menu addCategory: self createCategoryForGenerators.
	 ].
	