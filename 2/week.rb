require 'date'
start = Date.new(2017, 4, 10)
finish = Date.new(2018, 3, 26)
range = start..finish

a = start
while range.include? a do
	puts a.strftime(',%m/%d').gsub(',0', ',').gsub('/0', '/')
	a += 7
end
