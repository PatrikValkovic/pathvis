initialization
initializeWidgets
	| labelCount buttonCount |

	labelCount := 1.
	buttonCount := 1.
	
	collection do: [ :each |
		| label |
		label := self newLabel.
		label label: ( each at: 1 ) asString.
		self assign: label to: ( 'lbl_', labelCount asString ) asSymbol.
		labelCount := labelCount + 1. 		
		2 to: each size do: [ :i | | model |
				model := self newButton.
				model label: ( each at: i ) asString.
				self assign: model to: ('btn_', buttonCount asString) asSymbol.
				buttonCount := buttonCount + 1.
		] .
		
	]
