func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var hashMap: [Int: Int] = [:]
    
    for (index, value) in nums.enumerated() {
        let complementValue = target - value
        
        if let complementValueIndex = hashMap[complementValue] {
            return [complementValueIndex, index]
        }
        
        hashMap[value] = index
        
    }
    return []
}

print(twoSum([3,3], 6))

