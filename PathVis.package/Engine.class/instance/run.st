running
run
	|spce graph alg rend notif result|
	"Create space"
	spce := self space.
	"Generate graph"
	graph := (self generator) new
			nodeClass: self nodeClass;
			edgeClass: self edgeClass;
			generate.
	"Prepare renderer"
	rend := spce renderer.		
	rend prepare: graph.
	"Prepare notificator"
	notif := space notificator renderer: rend; yourself.
	"Run algorithm"
	alg := DFS onGraph: graph.
	result := alg 
		notificator: notif;
		prepare;
		run;
		finish;
		results.
	rend destroy.
	^ result.