private
freeSlotName
	^ #(#left #right) firstMatch: [ :item | (self perform: item) isNil  ].