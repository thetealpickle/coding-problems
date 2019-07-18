//: [Previous](@First Not Repeating Character)

/*
 Two Sum
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 Guaranteed constraints:
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Additional questions I (@thetealpickle) had based on the problem:
 [Q] How is an element defined? Is an element unqiue based on the combination of its value and index or just the value?
        [A] An element is defined unique based on the combination of its value and index.
            As a result testcase: nums = [3 , 3] target = 6 should return [0,1]
 */

import Foundation


var testcases = [[2, 1, 3, 5, 2, 3], [2, 2], [2, 4, 3, 5, 1]]

func runSampleTestCases(_ testcase: [Int]) {

}

testcases.map { runSampleTestCases($0)}
//: [Next](@next)
