#!/usr/local/bin/ruby
# coding: utf-8

require 'cgi'


cgi = CGI.new;

#ヘッダー出力
cgi.out("type" => "text/html" ,
        "charset" => "UTF-8") {

  #コンテツ出力
  "<html><body>" +
  "<h1>テストページ</h1>" +
  "</html></body>"
}