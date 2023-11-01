def merge_sort arr
    # Base case, already sorted
    return arr if arr.length < 2

    # Find the middle position
    middle = arr.length / 2

    # Sort the left half
    left = merge_sort(arr[0, middle])

    # Sort the right half
    right = merge_sort(arr[middle, arr.length])

    # Merge both halves together and return them
    merge(left, right)
end

def merge(left, right)
    merged = []

    # Create a pointer for each half
    left_index = right_index = 0

    # While both halves still have elements
    while left_index < left.length && right_index < right.length

        # Find the lesser element and move its respective pointer along
        if left[left_index] < right[right_index]
            merged << left[left_index]
            left_index += 1
        else
            merged << right[right_index]
            right_index += 1
        end

    end

    # One of the two arrays can still have elements
    # So we just dump whatever is left of both in the merged array
    merged.append(*left[left_index..])
    merged.append(*right[right_index..])

    merged
end
