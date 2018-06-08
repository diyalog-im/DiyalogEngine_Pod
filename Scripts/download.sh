#!/bin/bash
set -ev

echo "fetching DiyalogEngine.framework"
curl -OL http://diyalog.im/app/pkgs/DiyalogEngine.zip

unzip -o -q DiyalogEngine.zip
rm DiyalogEngine.zip
