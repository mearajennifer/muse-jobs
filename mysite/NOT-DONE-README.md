## DreamJob
Turn your dream into your career path

## Technologies
* Python
* Django
* PostgresQL
* HTML
* CSS
* Bootstrap
* React

## Installation
To run DreamJob on your own machine:

Install PostgreSQL (Mac OSX)

Clone or fork this repo:
```
https://github.com/mearajennifer/muse-jobs.git
```

Create and activate a virtual environment inside your JobTracker directory:
```
virtualenv env
source env/bin/activate
```

Install the dependencies:
```
pip install -r requirements.txt
```

Create the database:

```
createdb musejobs
```

Run the app:

```
python3 manage.py runserver 0.0.0.0:5000
```

You can now navigate to 'localhost:5000/' to access DreamJob.

