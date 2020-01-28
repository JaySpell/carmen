from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    find_me = where_in_the_world()
    return "Hello World!"

def where_in_the_world():
    ip_info = ""

    return ip_info

if __name__ == '__main__':
    app.run()