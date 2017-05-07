orig=origin/section
dest=2/section

# 産科と婦人科の予定を 1 file に集約する．

cat "$orig"/"産婦人科(産科).csv" | ruby -F',' -ane 'comma = ","; line = "1,#{$F[0..2].join(comma)},産科 #{$F[3..1000].join(comma)}"; print line'
cat "$orig"/"産婦人科(婦人科).csv" | ruby -F',' -ane 'comma = ","; line = "1,#{$F[0..2].join(comma)},婦人科 #{$F[3..1000].join(comma)}"; print line'

cat "$orig"/"産婦人科(産科).csv" | ruby -F',' -ane 'comma = ","; line = "2,#{$F[0..2].join(comma)},産科 #{$F[3..1000].join(comma)}"; print line'
cat "$orig"/"産婦人科(婦人科).csv" | ruby -F',' -ane 'comma = ","; line = "2,#{$F[0..2].join(comma)},婦人科 #{$F[3..1000].join(comma)}"; print line'
