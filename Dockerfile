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
COPY ./whl/python_dotenv-1.0.1-py3-none-any.whl ./whl
COPY ./whl/packaging-24.1-py3-none-any.whl ./whl
COPY ./whl/marshmallow-3.21.3-py3-none-any.whl ./whl
COPY ./whl/environs-11.0.0-py3-none-any.whl ./whl
COPY ./whl/dj_database_url-2.2.0-py3-none-any.whl ./whl
# wagtail
COPY ./whl/pytz-2024.1-py2.py3-none-any.whl ./whl
COPY ./whl/django_modelcluster-6.3-py2.py3-none-any.whl ./whl
COPY ./whl/django_permissionedforms-0.1-py2.py3-none-any.whl ./whl
COPY ./whl/django_taggit-5.0.1-py3-none-any.whl ./whl
COPY ./whl/django_treebeard-4.7.1-py3-none-any.whl ./whl
COPY ./whl/djangorestframework-3.15.2-py3-none-any.whl ./whl
COPY ./whl/django_filter-24.2-py3-none-any.whl ./whl
COPY ./whl/draftjs_exporter-5.0.0-py3-none-any.whl ./whl
COPY ./whl/pillow-10.3.0-cp310-cp310-manylinux_2_28_x86_64.whl ./whl
COPY ./whl/soupsieve-2.5-py3-none-any.whl ./whl
COPY ./whl/beautifulsoup4-4.12.3-py3-none-any.whl ./whl
COPY ./whl/filetype-1.2.0-py2.py3-none-any.whl ./whl
COPY ./whl/willow-1.8.0-py3-none-any.whl ./whl
COPY ./whl/six-1.16.0-py2.py3-none-any.whl ./whl
COPY ./whl/l18n-2021.3-py3-none-any.whl ./whl
COPY ./whl/et_xmlfile-1.1.0-py3-none-any.whl ./whl
COPY ./whl/openpyxl-3.1.5-py2.py3-none-any.whl ./whl
COPY ./whl/anyascii-0.3.2-py3-none-any.whl ./whl
COPY ./whl/telepath-0.3.1-py38-none-any.whl ./whl
COPY ./whl/laces-0.1.1-py3-none-any.whl ./whl
COPY ./whl/pillow_heif-0.17.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl ./whl
COPY ./whl/wagtail-6.1.2-py3-none-any.whl ./whl
# Puput
COPY ./whl/django_el_pagination-4.0.0-py2.py3-none-any.whl ./whl
COPY ./whl/webencodings-0.5.1-py2.py3-none-any.whl ./whl
COPY ./whl/bleach-4.1.0-py2.py3-none-any.whl ./whl
COPY ./whl/Markdown-3.6-py3-none-any.whl ./whl
COPY ./whl/wagtail_markdown-0.11.1-py3-none-any.whl ./whl
COPY ./whl/puput-2.1.1-py3-none-any.whl ./whl
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
RUN pip install ./whl/python_dotenv-1.0.1-py3-none-any.whl
RUN pip install ./whl/packaging-24.1-py3-none-any.whl
RUN pip install ./whl/marshmallow-3.21.3-py3-none-any.whl
RUN pip install ./whl/environs-11.0.0-py3-none-any.whl
RUN pip install ./whl/dj_database_url-2.2.0-py3-none-any.whl
RUN pip install ./whl/pytz-2024.1-py2.py3-none-any.whl
RUN pip install ./whl/django_modelcluster-6.3-py2.py3-none-any.whl
RUN pip install ./whl/django_permissionedforms-0.1-py2.py3-none-any.whl
RUN pip install ./whl/django_taggit-5.0.1-py3-none-any.whl
RUN pip install ./whl/django_treebeard-4.7.1-py3-none-any.whl
RUN pip install ./whl/djangorestframework-3.15.2-py3-none-any.whl
RUN pip install ./whl/django_filter-24.2-py3-none-any.whl
RUN pip install ./whl/draftjs_exporter-5.0.0-py3-none-any.whl
RUN pip install ./whl/pillow-10.3.0-cp310-cp310-manylinux_2_28_x86_64.whl
RUN pip install ./whl/soupsieve-2.5-py3-none-any.whl
RUN pip install ./whl/beautifulsoup4-4.12.3-py3-none-any.whl
RUN pip install ./whl/filetype-1.2.0-py2.py3-none-any.whl
RUN pip install ./whl/willow-1.8.0-py3-none-any.whl
RUN pip install ./whl/six-1.16.0-py2.py3-none-any.whl
RUN pip install ./whl/l18n-2021.3-py3-none-any.whl
RUN pip install ./whl/et_xmlfile-1.1.0-py3-none-any.whl
RUN pip install ./whl/openpyxl-3.1.5-py2.py3-none-any.whl
RUN pip install ./whl/anyascii-0.3.2-py3-none-any.whl
RUN pip install ./whl/telepath-0.3.1-py38-none-any.whl
RUN pip install ./whl/laces-0.1.1-py3-none-any.whl
RUN pip install ./whl/pillow_heif-0.17.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
RUN pip install ./whl/wagtail-6.1.2-py3-none-any.whl
RUN pip install ./whl/django_el_pagination-4.0.0-py2.py3-none-any.whl
RUN pip install ./whl/webencodings-0.5.1-py2.py3-none-any.whl
RUN pip install ./whl/bleach-4.1.0-py2.py3-none-any.whl
RUN pip install ./whl/Markdown-3.6-py3-none-any.whl
RUN pip install ./whl/wagtail_markdown-0.11.1-py3-none-any.whl
RUN pip install ./whl/puput-2.1.1-py3-none-any.whl
RUN pip freeze > requirements.txt

# copy project
COPY . .