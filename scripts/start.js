#!/usr/bin/env node
'use strict';
/**
 * 'http://blog.hatena.ne.jp/-/blog_style/*' へのアクセス を書き換える
 */
var hoxy  = require('hoxy');
var proxy = hoxy.createServer().listen(8888);
proxy.intercept({
  phase    : 'request',
  hostname : 'blog.hatena.ne.jp',
  url      : /blog_style\/.*/,
}, function (req, res, cycle) {
  const filepath = `${__dirname}/../index.css`;
  return cycle.serve(filepath);
});
