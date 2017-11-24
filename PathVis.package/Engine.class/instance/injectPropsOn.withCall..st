private
injectPropsOn: aStartClass withCall: aCallSymbol
	^ { 
	    self space.
	    self renderer.
	    self algorithm.
	    self generator
	} inject: aStartClass into: [ :base :each |
		each perform: aCallSymbol asMutator with: base.
	 ].