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

Based on whether the interviewer wants a general abstract solution or 
a highly efficient solution tailored to the constraints of this problem will need to be specified
*/

import Foundation

var testcases = [[2, 1, 3, 5, 2, 3], [2, 2], [2, 4, 3, 5, 1]]

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


/*
 
 // Example walk through for the tailored testcase - firstDuplicateTailored(in:)
 
 Run #1
 [2, 1, 3, 5, 2, 3]
  ^

 val = 2
 a[abs(val) - 1] *= -1
 a[abs(2) - 1] *= -1
 a[2-1] *= -1
 a[1] *= -1

 result: [2, -1, 3, 5, 2, 3]
 
 Run #2
 [2, -1, 3, 5, 2, 3]
     ^
 
 val = -1
 a[abs(val) - 1] *= -1
 a[abs(1) - 1] *= -1
 a[ 1-1] *= -1
 a[ 0] *= -1
 
 result: [-2, -1, 3, 5, 2, 3]
 
 Run #3
 [-2, -1, 3, 5, 2, 3]
          ^
 
 val = 3
 a[abs(val) - 1] *= -1
 a[abs(3) - 1] *= -1
 a[3 -1] *= -1
 a[ 2] *= -1
 
 result: [-2, -1, -3, 5, 2, 3]
 
 
 Run #4
 [-2, -1, -3, 5, 2, 3]
              ^
 
 val = 5
 a[abs(val) - 1] *= -1
 a[abs(5) - 1] *= -1
 a[5 -1] *= -1
 a[ 4] *= -1
 
 result: [-2, -1, -3, 5, -2, 3]
 
 Run #5
 [-2, -1, -3, 5, -2, 3]
                  ^
 
 val = -2
 a[abs(val) - 1] *= -1
 a[abs(-2) - 1] *= -1
 a[ 2-1] *= -1
 a[ 1] *= -1
 
 result: [-2, 1, -3, 5, -2, 3]
 
 repeat number = 2
 return 2
 
 */


//: [Next](@next)
