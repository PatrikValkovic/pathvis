initialization
initializeWidgets
| labelCount buttonCount |

	self needRebuild: false.
	
	labelCount := 1.
	buttonCount := 1.
	
	categories do: [ :eachCategory |
		| label |
		label := self newLabel.
		label label: ( eachCategory label text ) asString.
		self assign: label to: ( 'lbl_', labelCount asString ) asSymbol.
		labelCount := labelCount + 1.
		eachCategory buttonList do: [ :eachButton |
			| button blok |
			button := self newButton.
			button label: ( eachButton text ) asString.
			self assign: button to: ( 'btn_', buttonCount asString ) asSymbol.
			eachButton toggleable ifTrue: [ 
				blok := [ :bc |
					[
						eachButton event value. 
						self toggleNthButton: bc 
					]
				].
				button action: ( blok value: buttonCount ).
			] ifFalse: [ 
				blok := [ eachButton event value ].
				button action: blok.
			].
			buttonCount := buttonCount + 1.
		].
	].