if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Joker-04/Joker.git /Joker 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Joker 
fi
cd /Joker
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
