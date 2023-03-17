def bubble_sort(arr)
  n = arr.length
  (n - 1).times do |i| 
    (n - (i + 1)).times do |left| #only go up the point after which we know the array will be sorted
      right = left + 1
      if arr[left] > arr[right]
        arr[left], arr[right] = arr[right], arr[left]
      end
    end
  end
  arr
end

a = bubble_sort([4,3,78,2,0,2])
pp a
b = bubble_sort([1, 2, 3, 4, 5, 6])
pp b
c = bubble_sort([5, 4, 3, 2, 1])
pp c
d = bubble_sort([1])
pp d
e = bubble_sort([])
pp e