#Solution

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        check = {} # Khởi tạo dict lưu < nums : index >
        
        for i, num in enumerate(nums): # enumerate cho phép lấy cả index và giá trị của phần tử trong list
            complement = target - num # Tìm số bù với num để đạt target
            if complement in check:
                return [check[complement], i] # Nếu tìm thấy số bù trả về ngay
            check[num] = i # Nếu không tìm thấy số bù, lưu vào dict để kiểm tra các số tiếp theo
        
        return []

#Test
if __name__ == "__main__":
    solution = Solution()
    print(solution.twoSum([1, 2, 8, 9], 10)) 

# Ans1: [1, 2] 