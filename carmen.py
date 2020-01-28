from flask import Flask
import requests

app = Flask(__name__)


@app.route('/')
def hello():
    find_me = where_in_the_world()
    return find_me

def where_in_the_world():
    ip_info = ""
    r = requests.get('https://api.github.com/user')
    ip_info = r.json()
    return ip_info

if __name__ == '__main__':
    app.run()