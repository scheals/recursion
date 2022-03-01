def fibs(number)
  all_the_fibs = []
  for i in 0...number
    case i
    when 0
      all_the_fibs << 0
    when 1
      all_the_fibs << 1
    else
      all_the_fibs << all_the_fibs[i - 1] + all_the_fibs[i - 2]
    end
  end
  all_the_fibs
end

def fibs_rec(number, all_the_fibs = [])
  return all_the_fibs if number < 0
  all_the_fibs << recursive_fibonacci(number)
  fibs_rec(number - 1, all_the_fibs)
end

def recursive_fibonacci(number)
  return 0 if number.zero?

  return 1 if number == 1

  recursive_fibonacci(number - 1) + recursive_fibonacci(number - 2)
end
p fibs(8)
p fibs_rec(8)
