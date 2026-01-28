//
//  TwoSum.swift
//  dsa_problems
//
//  Created by Mohammed Ismayil on 22/01/26.
//

// Hash method
func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var valueDictionary: [Int: Int] = [:]
    for (index,value) in numbers.enumerated() {
        let dictValue = target - value
        if let savedIndex = valueDictionary[value] {
            return [savedIndex, index]
        }
        valueDictionary[value] = index
    }
    
    return []
}
twoSum([2,7,11,15,5], 13)

// Two pointer method
// this is for sorted array only
func optimizedTwoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    
    while left < right {
        let sum = numbers[left] + numbers[right]
        if sum == target {
            return [left,right]
        } else if sum < target {
             left = left + 1
        } else {
            right = right - 1
        }
    }
    
    return []
}
optimizedTwoSum([2,7,11,15,18], 33)


