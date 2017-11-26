running
run
	|s g a r|
	s := self space.
	g := (s generators at: 1) new
			nodeClass: self nodeClass;
			edgeClass: self edgeClass;
			generate.
	r := s renderer.
	a := DFS from: (g nodes at: 1) to: (g nodes at: 4).
	^ a run. 