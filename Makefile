setup:
	python3 -m venv ~/.hello
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
# test:
# 	python3 -m pytest -vv --cov=myrepolib tests/*.py
# 	python3 -m pytest -nbval notebook.ipynb

lint:
	pylint --disable=R,C hello.py

all: install lint #test