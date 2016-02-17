#!/bin/bash

# updatetrsp.sh
# 17 Feb 16
# A J Corbett, G0WFV
# Update Gpredict transponder files from Gpredict git repo

git clone https://github.com/csete/gpredict.git /tmp/gpredict
cp -a /tmp/gpredict/data/trsp/*.trsp ~/.config/Gpredict/trsp/
rm -rf /tmp/gpredict
