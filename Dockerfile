FROM jupyter/scipy-notebook

RUN pip install numpy --no-cache-dir
RUN pip install joblib==1.1.0

COPY train.csv ./train.csv
COPY test.csv ./test.csv

COPY train.py ./train.py
COPY inference.py ./inference.py

RUN python3 train.py
