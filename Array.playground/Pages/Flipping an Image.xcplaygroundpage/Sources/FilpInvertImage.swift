import Cocoa

public func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    // handle case where image is nil
    guard !A.isEmpty else { return [[Int]]() }
    
    // create flip inverted image variable
    var flipInvertImage  = [[Int]]()
    
    // iterate through the the image, retreiving its rows
    for row in A {
        
        // store row count in a variable
        let rowCount = row.count
        
        // initialize an updated row variable
        var updatedRow = [Int]()
        
        // iterate through the row in reveresed order (end to beginning)
        for value in stride(from: rowCount - 1, through: 0, by: -1) {
            // handle the inversion and append the inverted value to the updated row
            if row[value] == 0 {
                updatedRow.append(1)
            } else {
                updatedRow.append(0)
            }
        }
        
        // append the flipped and inverted row to the flip/inverted image array
        flipInvertImage.append(updatedRow)
    }
    
    return flipInvertImage
}

