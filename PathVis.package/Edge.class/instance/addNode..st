setters
addNode: aNode
	self addNodeUnidirectional: aNode.
	aNode addEdgeUnidirectional: self.