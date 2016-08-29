# hatena-blog-theme-boilerplate

## Get Started

```
$ npm install
$ npm run build
```


### Develope themes with live-reload

You can easily develope themes with live-reload server.

1. Visit the [design configuration page](http://blog.hatena.ne.jp/my/config/design/detail) of your blog and put next snippet to `Customize` > `Stylesheet`.

```html
<link rel="stylesheet" href="http://localhost:3000/index.css"/>
<script async src='http://localhost:3000/browser-sync/browser-sync-client.js'></script>
```

2. `npm start` to start local server.

3. Visit your blog and edit the theme.
   Every change you make will be applied automatically.


## LICENSE

MIT
