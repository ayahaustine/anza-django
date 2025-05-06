# Environment Variables

This document describes the environment variables and how to use them correctly to manuplate different sections.

Below is a list of currently supported environment variables:

## A

- [**ALLOWED_HOSTS**](https://docs.djangoproject.com/en/5.1/ref/settings/#allowed-hosts)

  - **Optional**
  - default: []


## C

- **CACHE_LOCATION**

  - Address of the cache server.
  - **Optional**
  - default: redis://redis:6379/1

- **Celery Configuration**

  - Celery configs are prefixed with `CELERY_`. Documentation on Celery configs can be found at [Celery configuration documentation](https://docs.celeryq.dev/en/stable/userguide/configuration.html)
  - Defaults:

    - CELERY_BROKER_URL: redis://redis:6379/0

## D

- **DB_HOST**

  - Database host name
  - **Required**

- **DB_NAME**

  - Database name
  - **Required**

- **DB_USER**

  - Database user name
  - **Required**

- **DB_PORT**

  - Port to use to connect to the database
  - **Optional**
  - default: 5432

- **DB_PASSWORD**

  - Database password
  - **Required**

- **DB_ENGINE**

  - The database backend to use.
  - **Optional**
  - default: django.db.backends.postgresql

- [**DEFAULT_FROM_EMAIL**](https://docs.djangoproject.com/en/5.1/ref/settings/#default-from-email)
  - **Required**



## S

- [**SECRET_KEY**](https://docs.djangoproject.com/en/5.1/ref/settings/#secret-key)
  - **Required**
