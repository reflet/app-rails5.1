# Ruby on Rails5.1環境
ローカル環境の構築について記載します。

　
 
### ■ 前提条件
ローカル環境に下記ソフトウェアをインストールしていること
* [Docker Toolbox](hhttp://docs.docker.jp/mac/step_one.html)

※ ちなみに、Dockerが使える環境であれば上記ツールに限定されません。

## ■ ファイルの配置
gitコマンドにてファイルを配置します。

```
$ mkdir -p ~/rails5.1 && cd ~/rails5.1
$ git clone git@github.com:reflet/app-rails5.1.git .
```

　

## ■ コンテナ起動
下記コマンドでdockerコンテナを起動します。

```
$ docker-compose up -d
```

　

## 動作確認
ブラウザでアクセスしてみる。

```ｓｈ
192.168.99.100
```

　

## railsコンテナ操作
railsについて各種操作が発生した場合は、下記のようにして実行できます。

```
# コマンドのみ実行
$ docker-compose exec rails {{ コマンド }}

# コンテナへssh接続して操作する
$ docker exec rails bash
```
