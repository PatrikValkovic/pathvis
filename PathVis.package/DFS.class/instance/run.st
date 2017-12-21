running
run
	| stack visited node |
	stack := Stack new.
	visited := Set new.
	self notify markAsFollowing: self startNode.
	stack push: self startNode.
	[ stack isNotEmpty and: (visited includes: self endNode) not ]
		whileTrue: [
			node := stack pop.
			(visited includes: node) ifFalse: [ 
				self notify markAsWorking:  node.
				node edges do: [ :aEdge | 
					(visited includes: aEdge to) ifFalse: [ 
						self notify markAsFollowing: aEdge to.
						stack push: aEdge to.
					].
				].
			].
			self notify markAsVisited: node.
			visited add: node.
		].
	^ visited includes: self endNode.