//
//  Container With Most Water   .swift
//  dsa_problems
//
//  Created by Mohammed Ismayil on 29/01/26.
//

import Foundation
func maxArea(_ height: [Int]) -> Int {
    var maxArea = 0
    var leftPointer = 0
    var rightPointer = height.count - 1
    while leftPointer < rightPointer {
        var width = rightPointer - leftPointer
        var currentHeight = min(height[leftPointer], height[rightPointer])
        let area = width * currentHeight
        maxArea = max(maxArea, area)
        if height[leftPointer] < height[rightPointer] {
            leftPointer += 1
        } else {
            rightPointer -= 1
        }
    }
    return maxArea
    
}
print(maxArea([1,7,2,5,4,7,3,6]))
