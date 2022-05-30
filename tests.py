import requests
import json

BASE = "https://bombthecardgame.herokuapp.com"

# Game creation, returns passcode

owner = "admin"
id = "djfldsfaeasdf"
response = requests.post(BASE + f"/api/game/create/{owner}/{id}")
print(response.json())
