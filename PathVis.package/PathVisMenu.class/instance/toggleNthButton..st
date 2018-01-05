as yet unclassified
toggleNthButton: aNumber
	| symb |
	
	symb := ( 'btn_', aNumber asString ) asSymbol.
	( widgets at: symb ) state 
	ifTrue: [ 
		( ( widgets at: symb ) state: false )
	] ifFalse: [
		( ( widgets at: symb ) state: true )
	].