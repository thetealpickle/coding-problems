import Cocoa

// This method is a general purpose use case for finding duplicates within an array
public func firstDuplicate(in arr: [Int]) -> Int {
    // 1. check arr is not empty
    guard !arr.isEmpty else { return -1 }
    
    // 2. initialize set which will be used for checking
    var setCheck = Set<Int>()
    
    // 3. iterate through the array
    for val in arr {
        
        // 4. insert the value into the set and store the returned tuple
        let returnTuple = setCheck.insert(val)
        
        // 5. access the return tuple inserted property to check whether insertion was not successful
        if !returnTuple.inserted {
            
            // 6. if insertion failed then the value was already seen, return this value
            return returnTuple.memberAfterInsert
        }
    }
    
    // 7. no duplicates in the array, return -1
    return -1
}

// This method is custom tailored to work for this problem given the constraints
public func firstDuplicateTailored(in arr: [Int]) -> Int {
    // 1. check arr is not empty
    guard !arr.isEmpty else { return -1 }

    // 2. create a variable of the array parameter since parameters are passed as constants
    var a = arr

    // 3. iterate through the array
    for val in a {
        
        // 4. take the absolute of the val minus 1 (to fit within the zero based range)
        //    and multiply the value at the index of that value by -1
        a[abs(val) - 1] *= -1
        
        // 5. check whether the value at the index of the current value in the array is positive
        if a[abs(val) - 1] > 0 {
            
            // 6. the value at the position is positive which means this is a second occurrence
            return abs(val)
        }
    }

    // 7. no duplicates in the array, return -1
    return -1
}
