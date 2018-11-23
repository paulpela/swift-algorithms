import Foundation

extension Array where Element: Comparable {
    func binarySearch(item: Element) -> (position: Int?, iterations: Int) {
        var low = 0
        var high = self.count - 1
        var i = 0
        
        while low <= high {
            i += 1
            
            let mid = (low + high)
            let guess = self[mid]
            
            if guess == item {
                return (mid, i)
            }
            
            if guess > item {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return (nil, i)
    }
}

let testArray = [ 0, 3, 5, 199, 345, 523, 63, 644, 8585, 3939, 233, 643, 2424, 9683, 2123 ].sorted()

testArray.binarySearch(item: 345) // should return 6
testArray.binarySearch(item: 655) // nil - not in array
testArray.binarySearch(item: 0) // should return 0
