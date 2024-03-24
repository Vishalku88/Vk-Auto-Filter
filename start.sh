if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vishalku88/Vk-Auto-Filter/tree/master /Vk-Auto-Filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Vk-Auto-Filter
fi
cd /Vk-Auto-Filter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
