//Quick Sort
//Splits array into 3 parts: pivot,
//everything that is less then pivot,
//everything that is grater then pivot,
//merges back until everything is sorted

func quickSort (_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count / 2]
    let less = array.filter { $0 < pivot }
    let greater = array.filter { $0 > pivot }
    let equal = array.filter { $0 == pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

var arr = [213,43,21,54,4,1,2,9,7,4456,5,47,6]
print (quickSort(arr))
