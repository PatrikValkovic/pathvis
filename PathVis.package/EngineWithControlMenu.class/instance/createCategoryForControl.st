running
createCategoryForControl
	controlCategory := MenuCategory new label: (Label withText: 'Control'); yourself.
	controlCategory addButton: (Button withText: 'run' andEvent: [self run]).
	controlCategory addButton: (Button withText: 'stop' andEvent: [Transcript show: 'stop']).
	controlCategory addButton: 
		(Button withText: 'step forward' andEvent: [Transcript show: 'step forward']).
	"
	controlCategory addButton: 
		(Button withText: 'step backward' andEvent: [Transcript show: 'step backward']).
	"
	^ controlCategory.
	
