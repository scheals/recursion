def fibs(number)
  all_the_fibs = []
  (0...number).each do |num|
    all_the_fibs << if num <= 1
                      num
                    else
                      all_the_fibs[num - 1] + all_the_fibs[num - 2]
                    end
  end
  all_the_fibs
end

def fibs_rec(number, all_the_fibs = [])
  number -= 1 if all_the_fibs.empty?
  return all_the_fibs.reverse if number.negative?

  all_the_fibs << recursive_fibonacci(number)
  fibs_rec(number - 1, all_the_fibs)
end

def recursive_fibonacci(number)
  return number if number <= 1

  recursive_fibonacci(number - 1) + recursive_fibonacci(number - 2)
end
p fibs(8)
p fibs_rec(8)

def merge_sort(array, sorted = [])
  return array if array.length < 2

  left_half = array.slice!(0, (array.length / 2).floor)
  right_half = array
  left_element = merge_sort(left_half, sorted).first
  right_element = merge_sort(right_half, sorted).first
  if left_element > right_element
    sorted << right_element
    sorted << left_element
  else
    sorted << left_element
    sorted << right_element
  end
  sorted
end
p merge_sort([8, 3, 9, 7, 9, 2, 5, 6])
