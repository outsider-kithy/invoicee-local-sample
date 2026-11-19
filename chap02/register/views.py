from flask import Blueprint, render_template

register = Blueprint(
    "register",
    __name__,
    template_folder="templates",
)

@register.route("/")
def index():
    # registerルートの機能を記載
    return render_template("register/index.html")
