I am basic window for PathVis

I work only with some MenuCategory instances

I should be instantiated by calling PathVisMenu on: categories.
where categories is an instance of MenuCategory Ordered collection.

I can add and remove categories dynamically, this is done by calling the
addCategory: and removeCategory: respectivelly. Their argument is the category that you want to remove.

To show me you have to call two methods.
First of them is the unary message "initialize" which will go through the categories and decide what to do with them
The other message is "openWithSpec" - this method opens the final window

You can still use removeCategory: and addCategory: even if the window is open, the categories will be added removed nevertheless.