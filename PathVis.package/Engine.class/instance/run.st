running
run
	|graph alg renderer|
	graph := NoSpaceGenerator rectLoop.
	renderer := TranscriptRenderer.
	alg := DFS from: (graph nodes at: 1) to: (graph nodes at: 3).
	^ alg run. 