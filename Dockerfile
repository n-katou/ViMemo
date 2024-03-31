# ベースイメージの指定
FROM ruby:3.1.4

# 作業ディレクトリの設定
WORKDIR /app

# 依存関係ファイルのコピー
COPY Gemfile Gemfile.lock ./

# 依存関係のインストール
RUN bundle install

# アプリケーションのコピー
COPY . .

# ポートの公開
EXPOSE 3000

# Railsサーバーの起動コマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
