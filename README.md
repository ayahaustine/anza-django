# anza-django
anza-django is a powerful, ready-to-use collection of boilerplate code and configurations designed to save you days of setting up new Django projects.

This project include;
 - **Django**: web framework for building scalable, maintainable applications with built-in ORM, authentication, and security features.
 - **Postgresql**: A robust, ACID-compliant relational database known for its scalability, JSONB support, and strong concurrency handling.
 - **Redis**: A high-performance in-memory store used for caching, real-time data processing, and Celery task brokering.
 - **Celery**: A distributed task queue that enables asynchronous job processing to improve application responsiveness.
 - **Docker**: Ensures consistency across development, testing, and production environments by containerizing the entire stack.

## Development


### Rename the project
If you desire, rename the project from `backend` to a `new_name`.
Use the `rename_project.sh` script which will update all the necessary files.

Run the script with the new_name as argument like

```sh
./rename_project.sh new_project_name
```

### Set up development environment
Install the development requirements/dependencies

```sh
pip install -r requirements/dev.txt
```

Create a `.env` file and copy the content of the `.env.example` and paste into the `.env` you've created.


### Installing packages
You can install packages using `pip-compile`. To ensure that pip compile works, install `pip-tool` as provided in [pip-tools docs](https://pypi.org/project/pip-tools/), in your environment.

To add a new package, update the corresponding `requirements/<environment>.in` depending on the package's purpose.

For instance, if the package will be used by all environments, add it to `requirements/base.in`, else if it will be used only in development add in `requirements/dev.in`. Packages only available in the production environment will be added in `requirements/prod.in`.

Compile the corresponding `<environment>.txt` by running the command

```sh
pip-compile --output-file=requirements/<environment>.txt requirements/<environment>.in
```

e.g `pip-compile --output-file=requirements/base.txt requirements/base.in`


#### new app set up

To create a new app;

```sh
python manage.py startapp <appname> backend/apps/<appname>
```

If an update to the pre-commit hooks is required, run this in the terminal

```sh
pre-commit autoupdate
```


### Run tests
```sh
#all
pytest

# Run specific test file
pytest tests/test_models.py

# Run tests with verbose output
pytest -v
```
