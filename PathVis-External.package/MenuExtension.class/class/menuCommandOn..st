world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: 'PathVis' asSymbol)
		order: 0.1;
		action: [ Engine new show];
		iconName: #objects.