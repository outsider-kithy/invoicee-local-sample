import os
from flask import Flask
from sqlalchemy import create_engine
from sqlalchemy.orm import session
from sqlalchemy.ext.declarative import declarative_base
from flask_login import LoginManager,login_manager

from models import session, User

DATABASE_URL = 'postgresql://localhost/invoicee'
engine = create_engine(DATABASE_URL,isolation_level='AUTOCOMMIT')
Base = declarative_base()
db_uri = os.environ.get(DATABASE_URL)

login_manager = LoginManager()

@login_manager.user_loader
def load_user(user_id):
    return session.query(User).get(int(user_id))

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY']='secret_key'
    app.config['SQLALCHEMY_DATABASE_URI']=DATABASE_URL

    login_manager.init_app(app)

    #register
    from register import views as register_views
    app.register_blueprint(register_views.register, url_prefix="/register")

    #login
    from login import views as login_views
    app.register_blueprint(login_views.login, url_prefix="/login")

    #top
    from top import views as top_views
    app.register_blueprint(top_views.top, url_prefix="/top")

    #logout
    from logout import views as logout_views
    app.register_blueprint(logout_views.logout, url_prefix="/logout")

    return app