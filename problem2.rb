$cache = {0 => 1, 1 => 1}
def fib(n)
  $cache[n] ||= fib(n-1) + fib(n-2)
end

sum = 0
i = 0

loop do
  f = fib(i.tap { i += 1 })
  if f < 4000000
    sum += f if f.even?
  else
    break
  end
end

puts sum
