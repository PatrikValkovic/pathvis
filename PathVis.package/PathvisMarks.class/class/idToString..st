transformations
idToString: id
	| methods |
	methods := self class methodsInProtocol: #accessing.
	methods := methods collect: [ :each | each properties selector ].
	^ methods 
		detect: [ :each |
			(self perform: each) = id
	 	]
		ifNone: nil.