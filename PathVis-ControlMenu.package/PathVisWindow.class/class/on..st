instance creation
on: aCollection
	| inst |
	inst := self basicNew.
	inst collection: aCollection.
	inst initialize.
	^inst.