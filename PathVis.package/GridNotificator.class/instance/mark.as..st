messages
mark: aNode as: aMark
	self text: 'Node ', aNode id printString, ' marked as ', (PathvisMarks idToString: aMark) asString.