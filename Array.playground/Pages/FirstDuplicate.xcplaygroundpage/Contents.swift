//: [Previous](@Introduction)

/*
First Duplicate

Given an array a that contains only numbers in the range from 1 to a.length, find the first duplicate
number for which the second occurrence has the minimal index.

If there are more than 1 duplicated numbers, return the number for which the second occurrence has a
smaller index than the second occurrence of the other number does.

If there are no such elements, return -1.
 
Guaranteed constraints:

1 ≤ a.length ≤ 10^5
1 ≤ a[i] ≤ a.length.
*/

import Foundation


var testcases = [[2, 1, 3, 5, 3, 2], [2, 2], [2, 4, 3, 5, 1]]

func runSampleTestCases(_ testcase: [Int]) {
    
    print("--------------------------")
    print("Running testcase \(testcase.description)")
    
    // firstDuplicate(in:)
    // This method is a general purpose use case for finding duplicates within an array
    // Utilizing a set to keep track of unqiue inserts and the return tuple to assert insertion success
    let result1 = firstDuplicate(in: testcase)
    
    print("\nExecuting General Purpose:")
    result1 != -1 ? print("The first duplicate in \(testcase.description) is \(result1)") : print("Duplicate not found")
    
    // firstDuplicateTailored(in:)
    // This method is custom tailored to work for this problem given the constraints
    // Leveraging the fact that array values will always be a positive integer within the bounds of the array
    let result2 = firstDuplicateTailored(in: testcase)
    
    print("\nExecuting Tailored:")
    result2 != -1 ? print("The first duplicate in \(testcase.description) is \(result2)") : print("Duplicate not found")
    
    print("\n\n")
}

testcases.map { runSampleTestCases($0)}

//: [Next](@next)
