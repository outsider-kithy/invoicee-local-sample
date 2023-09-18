# このチャプターのサンプルコードの環境構築

## Macの場合
ターミナルで以下を実行
```shell
#chap01に移動
$ cd \chap01までのパス
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
ターミナル上に`* Running on http://127.0.0.1:5000`と表示されるので、ブラウザでアクセス。

## Windowsの場合
PowerShellで以下を実行
```shell
#chap01に移動
cd \chap01までのパス
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
PowerShell上に`* Running on http://127.0.0.1:5000`と表示されるので、ブラウザでアクセス。

