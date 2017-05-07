orig=origin/group
dest=2/section

cat $orig/A.csv | ruby -F',' -ane 'BEGIN { $array = Array.new; $array << ["", ""]; comma = "," }; $array << $F unless $F[1] == $array.last[1]; END { $array.each do |child| print child[0..1].join(comma) unless child == ["", ""] end }'
