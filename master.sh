#!/bin/bash

printf "creating virtual env ATTACK ...\n"
python3 -m venv ATTACK


printf "activating ATTACK env ...\n"
. ATTACK/bin/activate

printf "installing Flask ...\n"
pip3 install FLASK

export FLASK_APP=build
flask initdb

printf "launching HMS ...\n"
flask run

rm -rf ATTACK


