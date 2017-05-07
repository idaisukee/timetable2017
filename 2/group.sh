pwd=`pwd`
orig="$pwd"/'../origin/group'
dest="$pwd"/section

cat $orig/A.csv | ruby -F',' -ane 'BEGIN { $array = Array.new; $array << ["", ""]; comma = "," }; $array << $F unless $F[1] == $array.last[1]; END { $array.each do |child| if child[1] == "消化器外科Ⅰ/乳腺外科" then print child[0] + comma + "消化器外科乳腺外科" else print child[0..1].join(comma) unless child == ["", ""] end end }'
