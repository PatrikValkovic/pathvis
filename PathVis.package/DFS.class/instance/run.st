running
run
	| stack visited node |
	stack := Stack new.
	visited := Set new.
	self notify text: 'Add start node ', self startNode id printString, ' into stack of visi'.
	stack add: self startNode.
	[ stack isNotEmpty and: (visited includes: self endNode) not ]
		whileTrue: [
			node := stack pop.
			self notify text: 'Get node ', node id printString, ' from the stack'.
			(visited includes: node) ifFalse: [ 
				self notify text: 'Node ', node id printString, ' wasnt visited, so iterate throught all edges and add neighbors into stack'.
				node edges do: [ :aEdge | 
					self notify text: 'Add edge ' , aEdge id printString, ' into stack'.
					stack add: (aEdge oppositeTo: node).
				].
			].
			self notify text: 'Mark node ', node id printString, ' as visited'.
			visited add: node.
		].
	self notify text: 'End node was visited or all nodes already visited'.
	^ visited includes: self endNode.