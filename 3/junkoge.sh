pwd=`pwd`
orig="$pwd"/'../origin/section'
dest="$pwd"/section

# 循環器・呼吸器外科の予定を 1 file に集約する．

cat "$orig"/"循環器・呼吸器外科　呼吸器担当学生.csv" | ruby -F',' -ane 'comma = ","; line = "1,#{$F[1..3].join(comma)},#{$F[0]} #{$F[4..1000].join(comma)}"; print line'
cat "$orig"/"循環器・呼吸器外科　循環器担当学生.csv" | ruby -F',' -ane 'comma = ","; line = "1,#{$F[1..3].join(comma)},#{$F[0]} #{$F[4..1000].join(comma)}"; print line'
cat "$orig"/"循環器・呼吸器外科　担当患者手術日.csv" | ruby -F',' -ane 'comma = ","; line = "1,#{$F[1..3].join(comma)},#{$F[0]} #{$F[4..1000].join(comma)}"; print line'
