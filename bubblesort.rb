def bubble_sort (array)
    not_sorted = true
    while not_sorted do
        i=0
        not_sorted = false
        while i < (array.length - 1)
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                not_sorted = true
            end
         i+=1
        end
    end
    p array    
    
end


array = [4,3,78,2,0,2]

bubble_sort(array)