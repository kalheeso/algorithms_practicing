//Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var aux = [Int]()
    for index in 0..<nums.count {
        if (nums[index] != val) {
            aux.append(nums[index])
        }
    }
    nums = aux
    return nums.count
}

var arr = [3,2,2,3]
print(removeElement(&arr, 3))
