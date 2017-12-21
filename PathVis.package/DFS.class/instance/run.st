running
run
	| stack visited node |
	stack := Stack new.
	visited := Set new.
	self notify markAsFollowing: self startNode.
	stack add: self startNode.
	[ stack isNotEmpty and: (visited includes: self endNode) not ]
		whileTrue: [
			node := stack pop.
			(visited includes: node) ifFalse: [ 
				self notify markAsWorking:  node.
				node edges do: [ :aEdge | 
					(visited includes: aEdge to) ifFalse: [ 
						self notify markAsFollowing: aEdge to.
						stack add: aEdge to.
					].
				].
			].
			self notify markAsVisited: node.
			visited add: node.
		].
	self notify text: 'End node was visited or all nodes already visited'.
	^ visited includes: self endNode.