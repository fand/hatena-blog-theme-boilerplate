# hatena-blog-theme-boilerplate

English | [日本語](./README.ja.md)

A theme boilerplate for [Hatena Blog](http://hatenablog.com).


## Getting Started

Just clone this repo:

```
$ git clone http://github.com/fand/hatena-blog-theme-boilerplate
$ cd hatena-blog-theme-boilerplate
$ npm install
$ npm run build
```

or install `hbt` command via npm:

```
$ npm install -g @fand/hatena-blog-theme-boilerplate
$ hbt my-theme
$ cd my-theme
$ npm install
$ npm run build
```


### Desinging with browserSync

You can easily design themes with browserSync following these steps.

1. Visit the [design configuration page](http://blog.hatena.ne.jp/my/config/design/detail) of your blog.
  Delete styles in `Customize` > `Stylesheet`, and put this snippet to `Customize` > `Footer`.
  ```html
  <link rel="stylesheet" href="http://localhost:3000/index.css"/>
  <script async src='http://localhost:3000/browser-sync/browser-sync-client.js'></script>
  ```

2. Run `npm start` to start local server.

3. Visit your blog and edit the theme.
   Every change you make will be applied automatically.


## LICENSE

MIT
