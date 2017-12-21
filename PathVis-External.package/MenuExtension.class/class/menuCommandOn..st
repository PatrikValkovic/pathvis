world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: 'PathVis' asSymbol)
		order: 0.1;
		action: [ EngineBase new show];
		iconName: #smallHelpIcon. "TODO change icon"