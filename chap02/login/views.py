from flask import Blueprint, render_template

login = Blueprint(
    "login",
    __name__,
    template_folder="templates",
)

@login.route("/")
def index():
    # loginルートの機能を記載
    return render_template("login/index.html")
