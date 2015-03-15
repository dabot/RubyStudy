■ プロジェクトファイルのダウンロード
git clone https://github.com/dabot/RubyStudy.git


■ 使用するgem
・fastercsv v1.5.5
gem install fastercsv

・ruby-mysql v2.9.13
gem install ruby-mysql


■ DB作成
CREATE DATABASE ruby_study DEFAULT CHARACTER SET utf8;


■ ユーザ作成
CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON `ruby_study`.* TO 'user'@'localhost';
FLUSH PRIVILEGES;

