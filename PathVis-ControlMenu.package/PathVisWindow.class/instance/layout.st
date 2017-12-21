accessing
layout
	| col labelCount buttonCount |
	col := SpecColumnLayout composed.
	
	labelCount := 1.
	buttonCount := 1.
	
	categories do: [ :eachCategory |
		col add: ( 'lbl_',labelCount asString ) asSymbol.
		labelCount := labelCount + 1. 		
		eachCategory buttonList do: [ :button |
				col add: ( 'btn_',buttonCount asString ) asSymbol.
				buttonCount := buttonCount + 1.
		] .
		
	].

	^col
	