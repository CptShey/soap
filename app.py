from flask import Flask
import os
import socket

@app.route("/")
def hello():
    html = "<h3>Servus {name}!</h3>" \
           "<b>Hostname:</b> {hostname}<br/>" \
           
    return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname()

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)