from flask import Blueprint, render_template, request
from flask_login import login_required

invoice = Blueprint(
    "invoice",
    __name__,
    template_folder="templates",
)

@invoice.route("/")
@login_required
def index():
    return render_template("invoice/index.html")