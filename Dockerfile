FROM python:3.9

ENV PYTHONUNBUFFERED=1
RUN mkdir /workspace

RUN mkdir /workspace/static

RUN apt-get -y update && apt-get install -y libzbar-dev gunicorn

COPY ./requirements.txt /workspace/requirements.txt

COPY . /workspace/

WORKDIR /workspace

RUN pip install -r requirements.txt

# expose the port 8080
EXPOSE 8080
