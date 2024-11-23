#! /bin/bash
# is a comment in a bash script
# line 1 is called a shebang - instead of this you could just type /bin/base weather.sh in the command line
# to run, type "./weather.sh belmullet" for example...
#
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <weather_station>"
  exit 1
fi
date
echo "Downloading weather data..."
wget -O data/weather/`date +"%Y%m%d_%H%M%S_$1.json"` https://prodapi.metweb.ie/observations/$1/today
echo "Weather data download completed"
date