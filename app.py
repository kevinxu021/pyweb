import os
from bottle import route, run, static_file, template, view
from src.actions.PPAction import PPAction

@route('/js/<filename>')
def js_static(filename):
    return static_file(filename, root='./res/js')

@route('/img/<filename>')
def img_static(filename):
    return static_file(filename, root='./res/img')

@route('/css/<filename>')
def css_static(filename):
    return static_file(filename, root='./res/css')

@route('/fonts/<filename>')
def font_static(filename):
    return static_file(filename, root='./res/fonts')

#@route('/<filename:re:.*.html>')
def html_static(filename):
    return static_file(filename, root='./views/html')

@route('/m/<filename:re:.*.html>')
def mobile_static(filename):
    return static_file(filename, root='./views/mobile')

@route("/main")
@view("main")
def hello():
    pp = PPAction()
    pp.set_value(10)
    return dict(title = "Hello"+str(pp.get_value()), content = "Hello from Python!")

@route("/")
@view("index")
def index():
    return dict(title="aaaa", content = "aaaaaaaaa")



if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8081))
    run(host='0.0.0.0', port=port, reloader=True,debug=True)