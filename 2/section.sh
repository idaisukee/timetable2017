pwd=`pwd`
orig=$pwd/'../origin/section'
dest=$pwd/section

cp "$orig"/* "$dest"
rm "$dest"/"産婦人科(産科).csv"
rm "$dest"/"産婦人科(婦人科).csv"
rm "$dest"/"循環器・呼吸器外科　呼吸器担当学生.csv"
rm "$dest"/"循環器・呼吸器外科　循環器担当学生.csv"
rm "$dest"/"循環器・呼吸器外科　担当患者手術日.csv"
rm "$dest"/"消化器外科乳腺外科.csv"
mv "$dest"/"救急・集中医療(通常).csv" "$dest"/"救急・集中治療部.csv"
mv "$dest"/"消化器外科Ⅰ／乳腺外科.csv" "$dest"/"消化器外科Ⅰ乳腺外科.csv"

sh ./sanfu.sh > "$dest"/"産婦人科.csv"
sh ./junkoge.sh > "$dest"/"循環器・呼吸器外科.csv"
