# このチャプターのサンプルコードの環境構築
※この章はPostgreSQLのがインストールが必要です。
PostgreSQLとのインストール方法は、テキストの第3章・2節以降を参照してください。

## Macの場合
ターミナルで以下を実行
```shell
#chap03に移動
$ cd \chap03までのパス
#仮想環境「.venv」を作成
$ python3 -m venv .venv
#仮想環境をアクティベート
$ source .venv/bin/activate
#Flaskをインストール
(.venv) $ pip install flask
#dotenvをインストール
(.venv) $ pip install python-dotenv
#PostgreSQL関連のライブラリをインストール
(.venv) $ pip install sqlalchemy
(.venv) $ pip install flask_login
(.venv) $ pip install psycopg2
#Flaskを起動
(.venv) $ flask run
```

## Windowsの場合
PowerShellで以下を実行
```shell
#chap03に移動
cd \chap03までのパス
#仮想環境「.venv」を作成
python -m venv .venv
#仮想環境をアクティベート
.venv\Scripts\Activate.ps1
#Flaskをインストール
(.venv)　(略) pip install flask
#dotenvをインストール
(.venv)　(略) pip install python-dotenv
#PostgreSQL関連のライブラリをインストール
(.venv) (略) pip install sqlalchemy
(.venv) (略) pip install flask_login
(.venv) (略) pip install psycopg2
#Flaskを起動
(.venv)　(略) flask run
```
