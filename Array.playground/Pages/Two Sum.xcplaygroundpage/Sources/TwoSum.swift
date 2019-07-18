import Cocoa

public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // create a table variable
    // will map from element value to element index
    var valDict = [Int : Int]()
    
    // iterate through the array using the enumerated method
    // enumeration will return the index and value
    for (index, val) in nums.enumerated() {
        // determine the needed secondary number based on
        // target and the element at this current pass
        let difference = target - val
        
        // if the needed difference is found in the dict
        // assign the index and return
        if let matchIndex = valDict[difference] {
            return [matchIndex, index]
        }
        
        // needed difference not found, add this pair into the dictionary
        // if the value is already there, the index will be overridden with the most recently seen reference
        valDict[val] = index
        
    }
    // despite the guaranteed constraint, there was no solution 🙃
    // return an empty Int Array
    return [Int]()
}
