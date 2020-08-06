# Variables - editable
FLASK_IP="127.0.0.1"
FLASK_PORT="5000"

# Check if venv exists. If not create it and install requirements.
if ! [ -d "venv" ]; then
    python3 -m venv venv
    pip3 install -r requirements.txt
fi

# Activate the virtual env and run flask in the background.
source venv/bin/activate
flask run&

# If a previous *public* folder exists, delete it.
if [ -d "public" ]; then
    rm -rf public
fi

# Execute httrack to mirror flask app.
httrack --mirror "http://${FLASK_IP}:${FLASK_PORT}/"

# Remove httrack garbage.
rm -rf *.gif *.html hts-*

# Rename the dir
mv ${FLASK_IP}_${FLASK_PORT} public

# End
killall flask
deactivate
