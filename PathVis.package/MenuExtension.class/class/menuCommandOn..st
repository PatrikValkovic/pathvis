world menu
menuCommandOn: aBuilder
	<worldMenu>
	true
		ifTrue: [ (aBuilder item: 'PathVis' asSymbol)
				order: 0.1;
				action: [ 
						|c|
						c := Morph new.
						c openInWindow.
					 ] ].