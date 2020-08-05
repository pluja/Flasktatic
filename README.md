# Flasktatic ;D

I've realized that generating a static flash generated website is a bit of a drag. There is Frozen-Flask but it doesn't accept some file types and has problems with non-extension routes.

So I created this little script that works very well.

> Note: Only works with *true* static sites.

## Usage
Simply copy the raw text on the `deploy` and paste it into a file of your like. Give it execution permisions, edit it as you want, and execute it.

**PRE:** Install [httrack](https://www.httrack.com/)

1. Create the file `vim deploy` and paste the content of [this file](https://raw.githubusercontent.com/pluja/Flasktatic/master/deploy.sh)
2. Make sure you read it and edit whatever you want.
3. Give it execution permisions: `chmod a+x deploy`
4. Run it: `./deploy` (Be patient!)
5. Enjoy
