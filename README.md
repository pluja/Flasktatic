# Flastatic ;D

I've realized that generating a static flash generated website is a bit of a drag. There is Frozen-Flask but it doesn't accept some file types and has problems with non-extension routes.

So I created this little script that works very well.

## Usage
Simply copy the raw text on the `deploy` and paste it into a file of your like. Give it execution permisions, edit it as you want, and execute it.

**PRE:** Install [httrack](https://www.httrack.com/)

1. Create the file `vim deploy` and paste:

    ```
    source venv/bin/activate # Activate virtual env
    flask run& # Run flask server detachedvim 
    httrack --mirror http://127.0.0.1:5000/ # Flask local destination:port
    rm -rf *.gif *.html hts-* # Files created by httrack that are useless.
    mv 127.0.0.1_5000 public # Rename generated folder to public
    killall flask # Kill flask process
    deactivate # Deactivate virtual env
    ```

2. Edit whatever you want.
3. Give it execution permisions: `chmod a+x deploy`
4. Run it: `./deploy`
