as yet unclassified
toggleButton: aSymbol
	
	( widgets at: aSymbol ) state ifTrue: [ ( ( widgets at: aSymbol ) state: false )] ifFalse: [( ( widgets at: aSymbol ) state: true )].