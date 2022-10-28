if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/Test.git /Test
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Test
fi
cd /Test
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
