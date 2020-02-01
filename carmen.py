from flask import Flask
import requests

app = Flask(__name__)


@app.route('/')
def hello():
    find_me = where_in_the_world()
    return find_me

def where_in_the_world():
    city_info = ""
    r = requests.get('https://ipinfo.io/json')
    city_info = r.json()['city']
    return city_info

if __name__ == '__main__':
    app.run(host='0.0.0.0')