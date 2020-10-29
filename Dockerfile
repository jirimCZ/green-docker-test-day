#FROM python:3.7-alpine
FROM python
WORKDIR /code
ENV FLASK_APP=index.py
#ENV FLASK_env='development'
#ENV PYTHONPATH=/code
ENV FLASK_RUN_HOST=0.0.0.0
#RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
#RUN apk add --no-cache bash
#RUN apk update && apk add bash
EXPOSE 5000
COPY config.py config.py
COPY . .
#ENTRYPOINT [ "/bin/sh", "-c" ]
CMD [ "python3", "index.py" ]
