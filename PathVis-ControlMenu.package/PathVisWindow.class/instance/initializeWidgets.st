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
			| button |
			button := self newButton.
			button label: ( eachButton text ) asString.
			button action: eachButton event.
			self assign: button to: ( 'btn_', buttonCount asString ) asSymbol.
			buttonCount := buttonCount + 1.
		].
	].