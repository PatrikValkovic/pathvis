running
run
	| stack visited node |
	stack := Stack new.
	visited := Set new.
	stack add: from.
	[ stack isEmpty not and: (visited includes: to) not ]
		whileTrue: [ 
			node := stack pop.
			visited add: node.
			(visited includes: node) ifFalse: [ 
				node edges do: [ :each | stack add: (each oppositeTo: node) ] 
			 ].
		].
	^ visited includes: to