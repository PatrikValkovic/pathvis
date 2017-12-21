running
run
	|s g a r result|
	"Create space"
	s := self space.
	"Generate graph"
	g := (self generator) new
			nodeClass: self nodeClass;
			edgeClass: self edgeClass;
			generate.
	"Prepare renderer"
	r := s renderer.		
	r prepare: g.
	"Run algorithm"
	a := DFS onGraph: g.
	result := a 
		notificator: s notificator;
		prepare;
		run;
		finish;
		results.
	r destroy.
	^ result.