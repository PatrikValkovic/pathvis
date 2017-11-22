running
run
	|space graph alg renderer|
	space := TestSpace new.
	graph := (space generators at: 1) new generate.
	renderer := space renderer.
	alg := DFS from: (graph nodes at: 1) to: (graph nodes at: 3).
	^ alg run. 