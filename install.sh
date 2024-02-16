echo "start"
sleep 5
pwds="~/neisven-start-mine/"
mkdir neisven-start-mine
curl -O https://raw.githubusercontent.com/Neisven/start-mine/main/mine.sh
cp mine.sh $pwds
chmod +x $pwds/mine.sh
export PATH="$PATH:$pwds"
mine.sh
