#!/usr/local/bin/ruby

IP       = "127.0.0.1";           
PORT     = "8000";
DOC      =  ".";
is_windows = (ENV['OS'] == 'Windows_NT')
if is_windows
    CGIInterpreter = 'C:\Ruby187\bin\ruby.exe';
else
    CGIInterpreter = '/usr/bin/ruby';
end

require 'webrick'
opts  = {
  :BindAddress    => IP,
  :Port           => PORT,
  :DocumentRoot   => DOC,
  :CGIInterpreter => CGIInterpreter
}

server = WEBrick::HTTPServer.new(opts);

#コマンドラインでCtrl+Cした場合止めるイベントハンドラ
Signal.trap(:INT){server.shutdown};

#サーバースタート
server.start;