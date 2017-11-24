private
injectPropsOn: aStartClass withCall: aCallSymbol
	^ { 
	    self space.
	    self algorithm.
	    self generator
	} inject: aStartClass into: [ :base :each |
		each perform: aCallSymbol asMutator with: base.
	 ].