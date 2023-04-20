FROM python:3.10

RUN pip install numpy --no-cache-dir
RUN pip install scipy --no-cache-dir
RUN pip install scikit-learn --no-cache-dir
RUN pip install pandas --no-cache-dir

RUN pip install joblib

COPY train.csv ./train.csv
COPY test.csv ./test.csv

COPY train.py ./train.py
COPY inference.py ./inference.py

RUN python3 train.py
