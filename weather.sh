#! /bin/bash
# is a comment in a bash script
# line 1 is called a shebang - instead of this you could just type /bin/base weather.sh in the command line
date
echo "Downloading weather data..."
wget -O data/weather/`date +"%Y%m%d_%H%M%S_athenry.json"` https://prodapi.metweb.ie/observations/athenry/today
echo "Weather data download completed"
date