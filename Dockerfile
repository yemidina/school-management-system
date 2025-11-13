# 1. Start with an official Python base image. It's like a clean OS with Python pre-installed.
FROM python:3.9-slim

# 2. Set the "working directory" inside the container. All our commands will run from here.
WORKDIR /app

# 3. Copy the file with our Python dependencies into the container.
COPY requirements.txt .

# 4. Install the dependencies using pip.
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of our application's code (app.py) into the container.
COPY . .

# 6. Tell Docker that the container will listen on port 80 at runtime.
EXPOSE 80

# 7. This is the command that will be run when the container starts.
CMD ["python", "app.py"]