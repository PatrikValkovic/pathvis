tests
testCanMoveCornersRightMostTest
|obsArray r|
obsArray := ObstacleArray withSize: 10.		

obsArray array at: 4 * obsArray size + 8 put: false.
obsArray array at: 6 * obsArray size + 8 put: false.

obsArray array at: 4 * obsArray size + 8 put: true.
r := obsArray moveCheckCornersX:  9 Y: 5.
self assert: r equals: 3. 

obsArray array at: 6 * obsArray size + 8 put: true.
r := obsArray moveCheckCornersX:  9 Y: 5.
self assert: r equals: 6. 