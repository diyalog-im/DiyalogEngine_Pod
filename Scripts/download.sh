#!/bin/bash
set -ev

# rm -fr Frameworks/DiyalogEngine.framework

echo "fetching DiyalogEngine.framework"
curl -OL http://diyalog.im/app/pkgs/DiyalogEngine.zip

unzip -o -q DiyalogEngine.zip
mv DiyalogEngine.framework Frameworks
# mv DiyalogEngine.framework.dSYM Frameworks
rm DiyalogEngine.zip