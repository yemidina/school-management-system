from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    version = os.environ.get('APP_VERSION', "v1.0.0")
    return f"<h1>this is the sound of ci/cd pipeline kiyagit add </h1><p>Version: {version}</p>"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)