from flask_restful import Api, Resource
from flask_sqlalchemy import SQLAlchemy
from website import create_app
import psycopg2
import random
import json
import os



app = create_app()
api = Api(app)

db = SQLAlchemy()
db.init_app(app=app)



class test(Resource):

    def get(self):
        return {"message" : "response from API"}

    def post(self):
        return {"message" : "posted to API"}

class game(Resource):

    def post(self,owner,id):

        validated_passcode = False

        while not validated_passcode:

            passcode = random.randint(100000,999999)

            DATABASE_URL = os.environ.get("DATABASE_URL")

            conn = psycopg2.connect(
                 DATABASE_URL,sslmode="require"
             )

            curr = conn.cursor()

            query = f"select passcode from game_master;"

            curr.execute(query)

            result = curr.fetchall()

            for i in result:
                for j in i:
                    if i == passcode:
                        continue
            else:
                q_create = f"create table {id} (p_id varchar(10), deck varchar(500), turn_count integer);"
                curr.execute(q_create)
                conn.close()

                return {"passcode" : passcode}




api.add_resource(test,"/api")
api.add_resource(game,"/api/game/create/<string:owner>/<string:id>")



if __name__ == "__main__":
    print("[LOG] App __init__")
    app.run()
