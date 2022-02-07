//Merge Sort
//Splits array into halfs until nothing is left
//Merges back by sorting each subarray

func mergeSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }

  let middleIndex = array.count / 2
  
  let leftArray = mergeSort(Array(array[0..<middleIndex]))
  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
  
  return merge(leftArray, rightArray)
}

func merge(_ leftArr: [Int], _ rightArr: [Int]) -> [Int] {
  var leftIndex = 0
  var rightIndex = 0

    var orderedArray:[Int] = []
  
  while leftIndex < leftArr.count && rightIndex < rightArr.count {
    let leftElement = leftArr[leftIndex]
    let rightElement = rightArr[rightIndex]

    if leftElement < rightElement {
      orderedArray.append(leftElement)
      leftIndex += 1
    } else if leftElement > rightElement {
      orderedArray.append(rightElement)
      rightIndex += 1
    } else {
      orderedArray.append(leftElement)
      leftIndex += 1
      orderedArray.append(rightElement)
      rightIndex += 1
    }
  }

  while leftIndex < leftArr.count {
    orderedArray.append(leftArr[leftIndex])
    leftIndex += 1
  }

  while rightIndex < rightArr.count {
    orderedArray.append(rightArr[rightIndex])
    rightIndex += 1
  }
  
  return orderedArray
}
var arr = [213,43,21,54,4,1,2,9,7,5,47,6]
print (mergeSort(arr))
