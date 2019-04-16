require 'time'
t1 = Time.parse("2017-11-16 14:40:34")
t2 = Time.parse("2019-04-20 16:20:23")

10.times do |i|
  Expense.create({
    name: "Test Name #{i + 1}",
    cost: rand(11.2...5006.9),
    year: rand(t1..t2)
  })
end