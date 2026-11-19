from flask import Blueprint, render_template

top = Blueprint(
    "top",
    __name__,
    template_folder="templates",
)

@top.route("/")
def index():
    # topルートの機能を記載
    return render_template("top/index.html")
