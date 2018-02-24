# -*- coding: utf-8 -*-

file ='/home/ieremius/prd/dat/pub/med/timetable/2017/origin/group/C.csv'


hash = Hash.new

File.open(file) do |file|
	file.each_line do |line|
		line_array = line.split(',')
		hash[line_array[0]] = line_array[1].strip

	end
end

hash.invert do |k, v|
	puts [k, v].join(',')
end
