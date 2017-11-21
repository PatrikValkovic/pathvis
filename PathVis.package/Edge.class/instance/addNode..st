adding
addNode: aNode
	nodes add: aNode.
	aNode addEdgeUnidirectional: self.