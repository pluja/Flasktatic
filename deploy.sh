flask run&
httrack --mirror http://127.0.0.1:5000/
rm -rf *.gif *.html hts-*
mv 127.0.0.1_5000 public
killall flask
deactivate
