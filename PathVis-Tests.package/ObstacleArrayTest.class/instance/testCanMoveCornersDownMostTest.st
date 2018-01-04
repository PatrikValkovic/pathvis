tests
testCanMoveCornersDownMostTest
|obsArray r|
obsArray := ObstacleArray withSize: 10.		

obsArray array at: 8 * obsArray size + 6 put: false.
obsArray array at: 8 * obsArray size + 4 put: false.

obsArray array at: 8 * obsArray size + 6 put: true.
r := obsArray moveCheckCornersX:  5 Y: 9.
self assert: r equals: 3. 

obsArray array at: 8 * obsArray size + 4 put: true.
r := obsArray moveCheckCornersX:  5 Y: 9.
self assert: r equals: 6. 