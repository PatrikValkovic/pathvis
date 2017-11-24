running
run
	|s g a r|
	s := self space new.
	g := (s generators at: 1) new
			nodeClass: self nodeClass; "TODO INJECT FROM RENDERER"
			edgeClass: self edgeClass; "TODO INJECT FROM RENDERER"
			generate.
	r := s renderer new.
	a := DFS from: (g nodes at: 1) to: (g nodes at: 4).
	^ a run. 