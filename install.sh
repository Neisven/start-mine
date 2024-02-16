echo "start"
sleep 5
sudo apt update && sudo apt install -y curl default-jdk 
# install deps ^^
pwds=~/neisven-start-mine/
mkdir neisven-start-mine
curl -O https://raw.githubusercontent.com/Neisven/start-mine/main/mine.sh
curl -O https://raw.githubusercontent.com/Neisven/start-mine/main/mine.jar
mv mine.sh $pwds
mv mine.jar $pwds
chmod +x $pwds/mine.sh
export PATH="$PATH:$pwds"
mine.sh
echo "enter command: mine.sh for execute TL."
rm install.sh
