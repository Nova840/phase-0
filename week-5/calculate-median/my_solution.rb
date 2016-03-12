def median(array)
  p sorted = array.sort
  length = sorted.length
  return sorted[length / 2] if array[0].is_a? String
  return (sorted[(length - 1) / 2] + sorted[length / 2]) / 2.0
end