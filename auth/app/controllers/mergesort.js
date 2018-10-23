// Split the array into halves and merge them recursively 
function mergeSort (arr) {
  if (arr.length === 1) {
    // return once we hit an array with a single item
    return arr
  }

  const middle = Math.floor(arr.length / 2) // get the middle item of the array rounded down
  const left = arr.slice(0, middle) // items on the left side
  console.log("Left slice")
  console.log(left)
  const right = arr.slice(middle) // items on the right side
  console.log("Right slice")
  console.log(right)
  return merge(
    mergeSort(left),
    mergeSort(right)
  )
}

// compare the arrays item by item and return the concatenated result
function merge (left, right, c) {
  let result = []
  let indexLeft = 0
  let indexRight = 0

  while (indexLeft < left.length && indexRight < right.length) {

    if (left[indexLeft] < right[indexRight]) {
      // console.log("sort:" +)
      console.log("left array: " + left + " index " + indexLeft)
      result.push(left[indexLeft])
      console.log("sort result: " + result)
      indexLeft++
    } else {
      console.log("Right array: " + right + " index " + indexRight)
      result.push(right[indexRight])
      console.log("sort result: " + result)
      indexRight++
    }
  }

  return result.concat(left.slice(indexLeft)).concat(right.slice(indexRight))
}
var counter = 0
const list = [22, 5, 1, 113, 77, 2, 3305, 888, 67, 53, 75, 85, 678, 444]
console.log(mergeSort(list)) // [ 1, 2, 2, 3, 3, 3, 5, 6, 7, 8 ]