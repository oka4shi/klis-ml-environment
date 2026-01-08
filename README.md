# klis-ml-environment

筑波大学の知識情報・図書館学類で開講されている「機械学習」のDocker向け環境です。

以下のPythonライブラリがインストールされています。
- NumPy
- Matplotlib

また、IPAexフォントが導入されています。

## 使い方

Dockerと[Docker compose](https://docs.docker.jp/compose/install/index.html)が必要です。

```bash
# 初期設定
git clone https://github.com/oka4shi/klis-ml-environment.git
cd klis-ml-environment

# Jupyter Notebookを起動
docker compose up
# ブラウザで http://localhost:8888 に接続するとJupyter Labが起動します

# シェルに接続（必要に応じて）
docker compose exec jupyter bash

# Jupyter Notebookを終了
docker compose down
```

`./notebooks`フォルダにノートブックファイルを保存するとJupyter Labから確認できます。

##  謝辞
このリポジトリは[coins23/prog1-environment](https://github.com/coins23/prog1-environment/)を参考にしています。

