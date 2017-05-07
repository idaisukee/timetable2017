# -*- coding: utf-8 -*-

file ='/home/ieremius/prd/dat/pub/med/timetable/2017/origin/group/A.csv'


array = Array.new
array << ["", ""]

File.open(file) do |file|
	file.each_line do |line|
		line_array = line.split(',')
		if line_array[1] != array.last[1] then
			if line_array[1] == "消化器外科Ⅰ/乳腺外科\n" then
				if array.last[1] != "消化器外科Ⅰ乳腺外科\n" then
					array << [line_array[0], "消化器外科Ⅰ乳腺外科\n"]
				end
			else
				array << line_array
			end
		end
	end
end

array.delete_at(0)
array.each do |child|
	print child.join(',')
end
