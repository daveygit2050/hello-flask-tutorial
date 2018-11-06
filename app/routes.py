from app import app
import time

@app.route('/')
@app.route('/index')
def index():
    return("Access a path to get a response after 60 seconds")

@app.route('/<path:dummy>')
def other(dummy):
    time.sleep(60)
    return("You attempted to access {}".format(dummy))
