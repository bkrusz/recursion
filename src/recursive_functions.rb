def fibs(amount_in_sequence)
  if amount_in_sequence < 2
    amount_in_sequence
  else
    fibs(amount_in_sequence - 1) + fibs(amount_in_sequence - 2)
  end
end

def merge_sort(array, first, last)
  if first < last
    middle = ((first + last) / 2) # -1
    merge_sort(array, first, middle)
    merge_sort(array, middle + 1, last) # +1
    merge(array, first, middle, last)
  end
end

def merge(array, first, middle, last)
  left_half_size = middle - first # +1
  right_half_size = last - middle - 1

  left_half_array = Array.new(left_half_size)
  right_half_array = Array.new(right_half_size)

  for i in 0..left_half_size
    left_half_array[i] = array[first + i]
  end
  for j in 0..right_half_size
    right_half_array[j] = array[middle + j + 0] # +1
  end

  i = 0
  j = 0
  k = first

  while (i < left_half_size) && (j < right_half_size)
    if left_half_array[i] <= right_half_array[j]
      array[k] = left_half_array[i]
      i += 1
    else
      array[k] = right_half_array[j]
      j += 1
    end
    k += 1
  end

  while i < left_half_size
    array[k] = left_half_array[i]
    i += 1
    k += 1
  end
  while j < right_half_size
    array[k] = right_half_array[j]
    j += 1
    k += 1
  end
  return array
end
