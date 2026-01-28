//
//  GroupAnagrams.swift
//  dsa_problems
//
//  Created by Mohammed Ismayil on 28/01/26.
//
func groupAnagrams(_ strs: [String]) -> [[String]] {
   
    var result: [[Int]: [String]] = [:]
    for str in strs {
        var array = Array(repeating: 0, count: 26)
        for char in str.unicodeScalars {
            let index = Int(char.value) - Int(UnicodeScalar("a").value)
            array[index] = array[index] + 1
        }
        result[array, default: []].append(str)
    }
    return Array(result.values)
}

print(groupAnagrams(["eat","tea","tan","ate","nat","bat"]))
