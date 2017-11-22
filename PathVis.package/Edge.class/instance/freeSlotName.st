private
freeSlotName
	^ #(#from #to) firstMatch: [ :item | (self perform: item) isNil  ].