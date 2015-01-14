(1..100).each do |numbers|
  #then I want it to divide each number by 3 and check if it has a reminder of 0, if so, put Fizz

  if numbers % 15 == 0
    print "FizzBuzz"
  elsif numbers % 3 == 0
    print "Fizz"

  elsif numbers % 5 == 0
    print "Buzz"

  else
    print numbers

  end
end
