def func(x, y, &strategy)
  if strategy
    result = yield x, y
  else
    result = x*y
  end
end

func(2.0, 3.0)
# => 6.0

func(2.0, 3.0) { |a, b| a/b }
# => 0.666666666
