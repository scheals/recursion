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
  return 0 if number.zero?

  return 1 if number == 1

  recursive_fibonacci(number - 1) + recursive_fibonacci(number - 2)
end
p fibs(8)
p fibs_rec(8)
