#!/bin/bash

if [ -f ./zip.sh ]
then
	rm -rf ./zip.sh
fi

node install
zip -r diceRoll.zip *
aws lambda update-function-code --function-name sr71 --zip-file fileb://diceRoll.zip