import Cocoa

public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    // iterate through array keeping track of a swap index once the target val has been seen
    // keep going until non target is seen and then swap
    // continue this until all array elements have been iterated over
    
    // assure the array is not empty, else return
    guard !nums.isEmpty else { return 0 }
    
    // init variables to track index
    var indexTracker = 0 // init with starting array index
    var swapIndex: Int? // the array is not guranteed to have the remove element, maybe nil
    
    // other variables for clarity
    let removeValue = val
    
    // iterate through the array while indexTracker has not reached the end of the array
    while indexTracker < nums.count {
        
        // check the value is not equal to the remove element
        if nums[indexTracker] != removeValue {
            
            // check if there is a remove element to swap with
            if let removeIndex = swapIndex {
                // swap the non remove element with the position of the swap Index
                var updatedElement = nums[removeIndex]
                var removeElement = nums[indexTracker]
                
                swap(&updatedElement, &removeElement)
                
                // update the values at the associated indices
                nums[removeIndex] = updatedElement
                nums[indexTracker] = removeElement
                
                // increment the swapIndex by 1
                swapIndex = removeIndex + 1
            }
        } else {
            
            // value is a remove element is swap element is nil, init swapIndex at current position
            if swapIndex == nil {
                swapIndex = indexTracker
            }
        }
        
        // increment indexTracker by 1
        indexTracker += 1
    }
    
    // swapIndex was never initialized, there were no remove elements within array
    // can return array count
    if swapIndex == nil { return nums.count }
    
    // return the swapIndex which will be pointing at the first remove element w/in array
    return swapIndex!
}

