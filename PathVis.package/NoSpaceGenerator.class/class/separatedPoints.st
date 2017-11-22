as yet unclassified
separatedPoints


	"
	1    2
	"

	|nodes|
	nodes := (1 to: 2) collect: [ :each | Node newWithAutoId  ].
	^ GraphContainer new addNodes: nodes.
	