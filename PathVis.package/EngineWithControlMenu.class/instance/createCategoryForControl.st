running
createCategoryForControl
	controlCategory := MenuCategory new label: (MenuLabel withText: 'Control'); yourself.
	controlCategory addButton: (MenuButton withText: 'run' andEvent: [self run] andToggleable: false).
	controlCategory addButton: (MenuButton withText: 'stop' andEvent: [Transcript show: 'stop'] andToggleable: false).
	controlCategory addButton: 
		(MenuButton withText: 'step formward' andEvent: [Transcript show: 'step forward'] andToggleable: false).
	"
	controlCategory addButton: 
		(Button withText: 'step backward' andEvent: [Transcript show: 'step backward']).
	"
	^ controlCategory.
	