#! /bin/bash
# is a comment in a bash script
# line 1 is called a shebang - instead of this you could just type /bin/base weather.sh in the command line
# To run, type "./weather1.sh Belmullet" for example...
# It has been extended to handle weather stations with a space in their name, e.g. Dublin Airport.
# To run, surround the weather station in single or double quotes, i.e.
# type "./weather1.sh 'Dublin Airport'"...

#
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <weather_station>"
  exit 1
fi
date

weather_station="$1"

echo "Downloading weather data..."
#wget -O data/weather/`date +"%Y%m%d_%H%M%S_$1.json"` https://prodapi.metweb.ie/observations/$1/today
wget -O "data/weather/$(date +"%Y%m%d_%H%M%S")_${weather_station// /_}.json" "https://prodapi.metweb.ie/observations/$(echo "$weather_station" | sed 's/ /%20/g')/today"

echo "Weather data download completed"
date