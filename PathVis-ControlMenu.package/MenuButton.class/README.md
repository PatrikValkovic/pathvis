I am Button used in PathVis category.

I should be insantiated by calling my class-side message withText:andEvent:andToggleable:

first keyword accepts a string - this will be the text that will appear on the button
second keyword accepts a block - this is the code that will be executed upon button click
third keyword accepts a boolean - this says whether or not this button should stay toggled upon click

Example:

menuButton withText: 'Button' andEvent: [ Transcript show: 'Button was clicked'; cr ] andToggleable: false.

creates a simple button that writes a text in transcript and is not toggleable.