#!/bin/sh
[ -e requirements.txt ] && /virtual-env/bin/pip install -r requirements.txt
[ -e requirements.pip ] && /virtual-env/bin/pip install -r requirements.pip
cp -r /virtual-env/lib/python2.7/site-packages/* /build/
zip -r9 /deployment.zip * -x "*.pyc"
# you could change this and run aws cli to do a deploy if you wanted to
