# hatena-blog-theme-boilerplate

日本語 | [English](./README.md)

[はてなブログ](http://hatenablog.com)用テーマのボイラープレートです。


## インストール

npmで `hbt` コマンドをインストールしてください。

```sh
npm install -g @fand/hatena-blog-theme-boilerplate
```


## 使い方

`hbt` コマンドで新しいテーマの雛形を作成できます。
以下のコマンドを順に実行すると、 `my-theme` という名前のテーマが作成されます。

```sh
hbt my-theme   # my-themeを作成
cd my-theme
npm install
npm run build  # index.css を出力
```

テーマのソースコードは `lib/` 内で開発してください。
デフォルトではscssファイルが生成されますが、lessを使いたい場合はlessファイルで置き換えると自動的に読み込まれます。

テーマが完成したら、 `index.css` の内容をデザイン設定画面の `カスタマイズ` > `デザインCSS` にコピペしてください。
どこか適当なところにアップロードしてimportしても良いです。


### browserSyncを使ってテーマを開発する

以下の手順に従うと、browserSyncでデザインをリアルタイムに確認しながらテーマを開発できます。

0. 開発用のブログを作ってください。
   既存のブログをエクスポート/インポートするなどして、サンプル記事を作成しておくと良いでしょう。

1. 開発用ブログの[デザイン設定画面](http://blog.hatena.ne.jp/my/config/design/detail)を開きます。
  `カスタマイズ` > `デザインCSS` の内容を削除し、 `カスタマイズ` > `フッタ` に以下の内容を入力してください。
  ```html
  <link rel="stylesheet" href="http://localhost:3000/index.css"/>
  <script async src='http://localhost:3000/browser-sync/browser-sync-client.js'></script>
  ```

2. 開発したいテーマのディレクトリで `npm start` を実行し、browserSyncのサーバーを起動します。

3. ブラウザで開発用ブログを開き、テーマを開発します。
   テーマを変更すると自動で反映されるはずです。  


## LICENSE

MIT
