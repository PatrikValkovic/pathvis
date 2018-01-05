running
run
	| queue visited node |
	queue := Stack new.
	visited := Set new.
	self notify markAsFollowing: self startNode.
	queue add: self startNode.
	[ queue isNotEmpty and: (visited includes: self endNode) not ]
		whileTrue: [
			node := queue pop.
			self notify markAsWorking: node.
			node edges do: [ :aEdge | 
				(visited includes: aEdge to) ifFalse: [ 
					self notify markAsFollowing: aEdge to.
					queue add: aEdge to.
				].
			].
		self notify markAsVisited: node.
		visited add: node.
		].
	^ visited includes: self endNode.