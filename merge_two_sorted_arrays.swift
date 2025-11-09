class Solution {
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    if (m == 0) {
        nums1 = nums2 
        return
    }
    if (n == 0) {
        return;
    }
    var i = 0
    var j = 0
    var merged = [Int]()
    while true {
        if (nums1[i] > nums2[j]) {
            merged.append(nums2[j])
            j = j + 1
        } else {
            merged.append(nums1[i])
            i = i + 1
        }

        if (j == n) {
            merged.append(contentsOf: nums1[i...m-1])
            break
        }
        if (i == m) {
            merged.append(contentsOf: nums2[j...n-1])
            break
        }
    }
    nums1 = merged
}

