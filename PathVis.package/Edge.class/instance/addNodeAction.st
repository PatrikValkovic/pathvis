private
addNodeAction
	self freeSlotName isNil
		isTrue: [ ^ [ :_ | NoSlotAvailableError signal: 'Both slots are full' ] ]
		isFalse:
			[ ^ [ :aNode | self perform: self freeSlotSetterName with: aNode ] ]