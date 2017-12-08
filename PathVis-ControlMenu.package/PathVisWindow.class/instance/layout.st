initialization
layout
	| col labelCount buttonCount |
	col := SpecColumnLayout composed.
	
	labelCount := 1.
	buttonCount := 1.
	
	collection do: [ :each |
		col add: ( 'lbl_',labelCount asString ) asSymbol.
		labelCount := labelCount + 1. 		
		2 to: each size do: [ :i |
				col add: ( 'btn_',buttonCount asString ) asSymbol.
				buttonCount := buttonCount + 1.
		] .
		
	].

	^col
	
	