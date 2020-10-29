FROM python
WORKDIR /code
ENV FLASK_APP=index.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY config.py config.py
COPY . .
CMD [ "python3", "index.py" ]
