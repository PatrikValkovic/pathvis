running
run
	|spce graph alg rend notif result|
	"If there is another forked process running - KILL, KILL, KILL!"
	proc isNil
		ifFalse:[
			proc terminate.
			proc := nil
		].
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
	proc := ([
		result := alg 
			notificator: notif;
			prepare;
			run;
			finish;
			results.
		rend destroy.
		"^ result."
	] fork).