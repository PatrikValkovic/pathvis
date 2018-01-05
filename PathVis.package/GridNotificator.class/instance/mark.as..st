messages
mark: aNode as: aMark
	self step.
	
	self renderer colorAt: aNode pos to: (colors at: aMark)