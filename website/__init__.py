from flask_cors import CORS
from flask import Flask
import secrets
import os

def create_app():

    app = Flask(__name__)

    app.config["SECRET_KEY"] = secrets.token_hex(16)
    app.config["SQLALCHEMY_DATABASE_URI"] = os.environ.get("DATABASE_URL")
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

    return app
