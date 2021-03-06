# pull base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Set work directory
WORKDIR /code

# install dependencies
COPY Pipfile Pipfile.lock /code/

RUN pip install pipenv && pipenv install

COPY . /code/