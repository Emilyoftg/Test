if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/Dulquer.git /Dulquer
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dulquer
fi
cd /Dulquer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
