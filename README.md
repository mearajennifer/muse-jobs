## DreamJob
Turn your dream into your career path

## Technologies
* Python
* Django
* PostgreSQL
* HTML
* CSS
* Bootstrap

## Installation
To run DreamJob on your own machine:

Install PostgreSQL (Mac OSX)

Clone or fork this repo:
```
https://github.com/mearajennifer/muse-jobs.git
```

Create and activate a virtual environment inside your DreamJob directory:
```
virtualenv env
source env/bin/activate
```

Install the dependencies:
```
pip install -r requirements.txt
```

Create the database and load in the data:
```
createdb musejobs
psql musejobs < musejobs.sql
```

Run the app:
```
python3 manage.py runserver
```

If running in a virtual machine:
```
python3 manage.py runserver 0.0.0.0:5000
```

You can now navigate to 'localhost:5000/jobs' to access DreamJob.








