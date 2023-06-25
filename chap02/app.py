from flask import Flask

def create_app():
    app = Flask(__name__)

    #loginページ
    from login import views as login_views
    app.register_blueprint(login_views.login, url_prefix="/login")

    #registerページ
    from register import views as register_views
    app.register_blueprint(register_views.register, url_prefix="/register")

    #topページ
    from top import views as top_views
    app.register_blueprint(top_views.top, url_prefix="/top")

    # その他のページも後ほど同様にimportします
    return app
