from flask_restful import Api, Resource
from flask_sqlalchemy import SQLAlchemy
from website import create_app
import psycopg2
import random
import json



app = create_app()
api = Api(app)

db = SQLAlchemy()
db.init_app(app=app)



class test(Resource):

    def get(self):
        return {"message" : "response from API"}

    def post(self):
        return {"message" : "posted to API"}


api.add_resource(test,"/api")



if __name__ == "__main__":
    print("[LOG] App __init__")
    app.run()
