#! /bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu
yes | sudo apt update
yes | sudo apt install python3 python3-pip
git clone https://github.com/akp-beni-github/flask-python-mysql-db.git
sleep 20
# shellcheck disable=SC2164
cd flask-python-mysql-db
yes | sudo apt install python3-venv
python3 -m venv venv
source venv/bin/activate
pip install flask
pip install pymysql
python -m flask --app app.py run --host=0.0.0.0
