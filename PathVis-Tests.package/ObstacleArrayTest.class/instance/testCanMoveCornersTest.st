tests
testCanMoveCornersTest
|obsArray r|
obsArray := ObstacleArray withSize: 10.		

obsArray array at: 6 * obsArray size + 6 put: false.
obsArray array at: 4 * obsArray size + 4 put: false.
obsArray array at: 4 * obsArray size + 6 put: false.
obsArray array at: 6 * obsArray size + 4 put: false.

obsArray array at: 4 * obsArray size + 4 put: true.
r := obsArray moveCheckCornersX:  5 Y: 5.
self assert: r equals: 3. 

obsArray array at: 6 * obsArray size + 6 put: true.
r := obsArray moveCheckCornersX:  5 Y: 5.
self assert: r equals: 6. 

obsArray array at: 6 * obsArray size + 4 put: true.
r := obsArray moveCheckCornersX:  5 Y: 5.
self assert: r equals: 9. 

obsArray array at: 4 * obsArray size + 6 put: true.
r := obsArray moveCheckCornersX:  5 Y: 5.
self assert: r equals: 12. 