running
run
	|graph alg renderer|
	graph := Algorithm newRectGraph.
	renderer := TranscriptRenderer.
	alg := DFS from: (graph at: 1) to: (graph at: 3).
	^ alg run. 