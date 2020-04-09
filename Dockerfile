FROM python:3.7-slim
LABEL text parsing
WORKDIR /app
COPY . .
RUN python3 -m venv venv3
RUN . venv3/bin/activate
RUN pip install -r requirements.txt
RUN python -m spacy download en_core_web_sm
CMD jupyter notebook --ip=0.0.0.0 --allow-root
