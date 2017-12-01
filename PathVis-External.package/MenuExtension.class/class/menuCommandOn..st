world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: 'PathVis' asSymbol)
		order: 0.1;
		action: [ 
			|c|
			c := Morph new.
			c openInWindow.
		];
		iconName: #smallHelpIcon. "TODO change icon"