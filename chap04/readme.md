# このチャプターのサンプルコードの環境構築
※この章はPostgreSQLのインストール及びSQLAlchemy等のライブラリのインストールが必要です。
PostgreSQLとライブラリのインストール方法は、テキストの第3章・2節以降を参照してください。

## Macの場合
ターミナルで以下を実行
```shell
#chap04に移動
$ cd \chap04までのパス
#仮想環境「.venv」を作成
$ python3 -m venv .venv
#仮想環境をアクティベート
$ source .venv/bin/activate
#Flaskをインストール
(.venv) $ pip install flask
#dotenvをインストール
(.venv) $ pip install python-dotenv
#Flaskを起動
(.venv) $ flask run
```

## Windowsの場合
PowerShellで以下を実行
```shell
#chap04に移動
cd \chap04までのパス
#仮想環境「.venv」を作成
python -m venv .venv
#仮想環境をアクティベート
.venv\Scripts\Activate.ps1
#Flaskをインストール
(.venv)　(略) pip install flask
#dotenvをインストール
(.venv)　(略) pip install python-dotenv
#Flaskを起動
(.venv)　(略) flask run
```
