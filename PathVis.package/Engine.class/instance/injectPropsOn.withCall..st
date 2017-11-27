private
injectPropsOn: aStartClass withCall: aCallSymbol
	^ { 
	    self space class.
		 self space renderer class.
	    self algorithm.
	    self generator
	} inject: aStartClass into: [ :base :each |
		each perform: aCallSymbol asMutator with: base.
	 ].