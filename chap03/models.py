import os
from sqlalchemy import Column,Integer,String,ForeignKey,create_engine
from sqlalchemy.orm import relationship, sessionmaker, session
from sqlalchemy.ext.declarative import declarative_base
import datetime
from sqlalchemy.sql.sqltypes import Date
from flask_login import UserMixin

#データベース関係の設定
DATABASE_URL = 'postgresql://localhost/invoicee'
engine = create_engine(DATABASE_URL,isolation_level='AUTOCOMMIT')
Base = declarative_base()
db_uri = os.environ.get(DATABASE_URL)

#セッションの設定
Base.metadata.create_all(engine)
Session = sessionmaker(bind = engine)
session = Session()

#ユーザーテーブル
class User(UserMixin,Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key = True, autoincrement = True)
    username = Column(String, unique = True)
    password = Column(String)
