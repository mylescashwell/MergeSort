import UIKit

//MARK: - EXAMPLE SOT
var numbers: [Int] = []

for _ in 0..<50 {
    let randomInt = Int(arc4random_uniform(UInt32(1000)))
    numbers.append(randomInt)
}

print(numbers)

//MARK: - SPLIT ARRAYS
func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    let leftArray  = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

//MARK: - MERGE ARRAYS
func merge(left: [Int], right: [Int]) -> [Int] {
    var mergedArray: [Int] = []
    var left  = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedArray.append(left.removeFirst())
        } else {
            mergedArray.append(right.removeFirst())
        }
    }
    
    return mergedArray + left + right
}

//MARK: - MERGE SORT
print()
print(mergeSort(array: numbers))
