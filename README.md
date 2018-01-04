# pathvis [![Build Status](https://travis-ci.org/PatrikValkovic/pathvis.svg?branch=dev)](https://travis-ci.org/PatrikValkovic/pathvis) [![Coverage Status](https://coveralls.io/repos/github/PatrikValkovic/pathvis/badge.svg?branch=dev)](https://coveralls.io/github/PatrikValkovic/pathvis?branch=dev)
Path searching algorithms visualization in pharo

# Installation

  - If you don't have Bloc installed, install it using:
```smalltalk
Metacello new
baseline: 'Bloc';
repository: 'github://pharo-graphics/Bloc:pharo6.1/src';
load: #core
```
  - Open Iceberg and clone this repository using https protocol (https://github.com/PatrikValkovic/pathvis.git)
  - Inside created repository pathvis, load all PathVis packages
  
 # Using PathVis
 
   - The world menu should contain button "PathVis" which starts the application's main GUI

# Reports

- 2018-1-4: Bug fixes, features checking.
- 2017-12-21: Main menu, grid space and the engine works together.
- 2017-12-7: Basic colorable grid added to project.
- 2017-12-1: Added a shortcut into world menu, that will launch PathVis.
- 2017-11-26: Add [Under the Hood](https://github.com/PatrikValkovic/pathvis/wiki/Under-the-Hood) section to the wiki.
- 2017-11-26: Developed base architecture of the app.
- 2017-11-21: Research about GUI frameworks.
- 2017-11-14: Requirements gathering and approval - visi our [Features](https://github.com/PatrikValkovic/pathvis/wiki/Features) wiki page.
- 2017-11-13: Travis CI set with coveralls.io.
- 2017-11-09: Meeting with team, agreement of basic concepts, will be on wiki soon.
