running
run
	| stack visited node |
	stack := Stack new.
	visited := Set new.
	stack add: self startNode.
	[ stack isNotEmpty and: (visited includes: to) not ]
		whileTrue: [ 
			node := stack pop.
			(visited includes: node) ifFalse: [ 
				node edges do: [ :aEdge | 
					stack add: (aEdge oppositeTo: node)
				].
			].
			visited add: node.
		].
	^ visited includes: to