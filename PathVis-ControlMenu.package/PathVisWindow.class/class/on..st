instance creation
on: aCollection
	| inst |
	inst := self basicNew.
	inst categories: aCollection.
	inst initialize.
	^inst.