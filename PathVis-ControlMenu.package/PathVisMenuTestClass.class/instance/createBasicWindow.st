as yet unclassified
createBasicWindow
	| category1 category2 category3 categories window |

	category1 := MenuCategory new.

	category1 label: ( Label withText: 'Algorithms' ).
	category1 addButton: ( Button withText: 'DFS' andEvent: [ Transcript show: 'You selected DFS'; cr ] ).
	category1 addButton: ( Button withText: 'BFS' andEvent: [ Transcript show: 'You selected BFS'; cr ] ).
	category1 addButton: ( Button withText: 'Dijkstra' andEvent: [ Transcript show: 'You selected Dijkstra'; cr ] ).

	category2 := MenuCategory new.
	category2 label: ( Label withText: 'Type' ).
	category2 addButton: ( Button withText: 'Simple' andEvent: [ Transcript show: 'You selected Simple'; cr ] ).
	category2 addButton: ( Button withText: 'Complex' andEvent: [ Transcript show: 'Kliknul si na Complex'; cr ] ).
	
	category3 := MenuCategory new.
	category3 label: ( Label withText: 'Test' ).
	category3 addButton: ( Button withText: 'Test1' andEvent: [ Transcript show: 'You selected Test1'; cr ] ).
	category3 addButton: ( Button withText: 'Test2' andEvent: [ Transcript show: 'You selected Test2'; cr ] ).
	
	categories := OrderedCollection new.
	categories add: category1; add: category2.
	
	"Opens window with 2 categories"
	window := PathVisWindow on: categories.
	window openWithSpec.
	
	"Adds another category"
	window addCategory: category3.
	
	"Removes the category"
	window removeCategory: category3.