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

def merge_sort(array, sorted = [])
  return array if array.length < 2

  left_half = array.slice!(0, (array.length / 2).floor)
  right_half = array
  left_element = merge_sort(left_half, sorted).clone
  right_element = merge_sort(right_half, []).clone
  sorted.clear
  (right_element.length + 5).times do
    break sorted.push(right_element[0..-1]) if left_element.empty?
    break sorted.push(left_element[0..-1]) if right_element.empty?

    if left_element.first > right_element.first
      sorted.push(right_element.shift)
    else
      sorted.push(left_element.shift)
    end
  end
  sorted.flatten
end

def random_array(length)
  array = []
  length.times do
    array.push(rand(100))
  end
  array
end
p merge_sort([5, 4, 6, 7, 8, 1, 3])
p merge_sort([5, 4, 6, 7, 8, 1, 3].shuffle)
p merge_sort([8, 3, 9, 7, 9, 2, 5, 6])
p merge_sort([8, 3, 9, 7, 9, 2, 5, 6].shuffle)
p merge_sort(random_array(15))
