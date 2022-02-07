//Insertion sort
//Iterates throw each element of array
//shifting then by one at a time
//from original place to end place

func insertionSort( _ array: [Int]) -> [Int] {
    var arr = array
    for x in 0..<arr.count {
        var y = x
        while y > 0 && arr[y] < arr[y - 1] {
            arr.swapAt(y - 1, y)
            y -= 1
        }
    }
    return arr
}

var arr = [213,43,21,54,4,1,2,9,7,4456,5,47,6]
print (insertionSort(arr))
