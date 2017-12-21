initialization
withSize: aNumber
	| space |
	space := self basicNew initialize.
	
	space size: aNumber.
	space background: (BlBackground paint: space backgroundColor).
	space prepareLayout.
	
	^space