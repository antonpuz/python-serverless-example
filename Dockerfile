FROM python:3.6-alpine

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080 8888

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
