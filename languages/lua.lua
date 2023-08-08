-- Define the bubble sort function
function bubble_sort(t)
    local n = #t
    repeat
        local swapped = false
        for i = 1, n - 1 do
            if t[i] > t[i + 1] then
                t[i], t[i + 1] = t[i + 1], t[i]
                swapped = true
            end
        end
        n = n - 1
    until not swapped
end

-- Define the quicksort function
function quicksort(t, low, high)
    if low < high then
        local pivot = t[high]
        local i = low - 1
        for j = low, high - 1 do
            if t[j] < pivot then
                i = i + 1
                t[i], t[j] = t[j], t[i]
            end
        end
        i = i + 1
        t[i], t[high] = t[high], t[i]
        quicksort(t, low, i - 1)
        quicksort(t, i + 1, high)
    end
end


local t = {}
for i = 1, 10000 do
    t[i] = math.random(1, 10000)
end

bubble_sort(t)
quicksort(t, 1, #t)