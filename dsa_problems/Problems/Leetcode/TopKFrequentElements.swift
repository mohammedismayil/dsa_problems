//
//  TopKFrequentElements.swift
//  dsa_problems
//
//  Created by Mohammed Ismayil on 28/01/26.
//

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict: [Int : Int] = [:]
    for num in nums {
        dict[num] = (dict[num] ?? 0) + 1
    }
    let sortedByValue = dict.sorted(by: { $0.value > $1.value })
    print(sortedByValue)
    return sortedByValue.prefix(k).map({$0.key})
}


print(topKFrequent([1,1,1,2,2,3], 2))
