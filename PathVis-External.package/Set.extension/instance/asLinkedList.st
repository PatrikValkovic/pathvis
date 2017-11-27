*PathVis-External
asLinkedList
	|l|
	l := LinkedList new.
	self do: [ :each |
		l addLast: each
	].
	^ l.
	