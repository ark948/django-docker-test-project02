# pull base image
FROM python:3.10.4-slim-bullseye

# set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set working dir
WORKDIR /code

RUN mkdir whl

# install dependencies
COPY ./whl/typing_extensions-4.12.2-py3-none-any.whl ./whl
COPY ./whl/asgiref-3.8.1-py3-none-any.whl ./whl
COPY ./whl/sqlparse-0.5.0-py3-none-any.whl ./whl
COPY ./whl/tzdata-2024.1-py2.py3-none-any.whl ./whl
COPY ./whl/Django-5.0.6-py3-none-any.whl ./whl
COPY ./whl/psycopg2_binary-2.9.9-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl ./whl
COPY ./whl/django_crispy_forms-2.2-py3-none-any.whl ./whl
COPY ./whl/crispy_bootstrap5-2024.2-py3-none-any.whl ./whl
COPY ./whl/PyJWT-2.8.0-py3-none-any.whl ./whl
COPY ./whl/defusedxml-0.7.1-py2.py3-none-any.whl ./whl
COPY ./whl/python3_openid-3.2.0-py3-none-any.whl ./whl
COPY ./whl/certifi-2024.6.2-py3-none-any.whl ./whl
COPY ./whl/charset_normalizer-3.3.2-py3-none-any.whl ./whl
COPY ./whl/idna-3.7-py3-none-any.whl ./whl
COPY ./whl/urllib3-2.2.1-py3-none-any.whl ./whl
COPY ./whl/requests-2.32.3-py3-none-any.whl ./whl
COPY ./whl/oauthlib-3.2.2-py3-none-any.whl ./whl
COPY ./whl/requests_oauthlib-2.0.0-py2.py3-none-any.whl ./whl
COPY ./whl/pycparser-2.22-py3-none-any.whl ./whl
COPY ./whl/cffi-1.16.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl ./whl
COPY ./whl/cryptography-42.0.8-cp39-abi3-manylinux_2_28_x86_64.whl ./whl
COPY ./whl/setuptools-70.2.0-py3-none-any.whl ./whl
COPY ./whl/wheel-0.43.0-py3-none-any.whl ./whl
COPY ./whl/django_allauth-0.63.3-py3-none-any.whl ./whl
RUN pip install ./whl/typing_extensions-4.12.2-py3-none-any.whl
RUN pip install ./whl/asgiref-3.8.1-py3-none-any.whl
RUN pip install ./whl/sqlparse-0.5.0-py3-none-any.whl
RUN pip install ./whl/tzdata-2024.1-py2.py3-none-any.whl
RUN pip install ./whl/Django-5.0.6-py3-none-any.whl
RUN pip install ./whl/psycopg2_binary-2.9.9-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
RUN pip install ./whl/django_crispy_forms-2.2-py3-none-any.whl
RUN pip install ./whl/crispy_bootstrap5-2024.2-py3-none-any.whl
RUN pip install ./whl/PyJWT-2.8.0-py3-none-any.whl
RUN pip install ./whl/defusedxml-0.7.1-py2.py3-none-any.whl
RUN pip install ./whl/python3_openid-3.2.0-py3-none-any.whl
RUN pip install ./whl/certifi-2024.6.2-py3-none-any.whl
RUN pip install ./whl/charset_normalizer-3.3.2-py3-none-any.whl
RUN pip install ./whl/idna-3.7-py3-none-any.whl
RUN pip install ./whl/urllib3-2.2.1-py3-none-any.whl
RUN pip install ./whl/requests-2.32.3-py3-none-any.whl
RUN pip install ./whl/oauthlib-3.2.2-py3-none-any.whl
RUN pip install ./whl/requests_oauthlib-2.0.0-py2.py3-none-any.whl
RUN pip install ./whl/pycparser-2.22-py3-none-any.whl
RUN pip install ./whl/cffi-1.16.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
RUN pip install ./whl/cryptography-42.0.8-cp39-abi3-manylinux_2_28_x86_64.whl
RUN pip install ./whl/setuptools-70.2.0-py3-none-any.whl
RUN pip install ./whl/wheel-0.43.0-py3-none-any.whl
RUN pip install ./whl/django_allauth-0.63.3-py3-none-any.whl
RUN pip freeze > requirements.txt

# copy project
COPY . .