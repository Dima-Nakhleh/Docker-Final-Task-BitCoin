# The image is based on the python:3.7-alpine base image
FROM python:3.7-alpine

# install the python-dotenv package using pip.
#This package allows the application to load environment variables from a file at runtime.
RUN pip install python-dotenv

# the working directory is set to /code .this directory is going to be inside the container.
WORKDIR /code

# the requirements specified in requirements.txt are installed, executes on the host.
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# the port that the contaier is listening on is 5000.
EXPOSE 5000

# copy the rest of the code to the container
COPY . . 
CMD ["python3", "app.py"]
