from flask import Blueprint, render_template
from flask_login import login_required

top = Blueprint(
    "top",
    __name__,
    template_folder="templates",
)

@top.route("/")
@login_required
def index():
    return render_template("top/index.html")