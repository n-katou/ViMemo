# ベースイメージの指定
FROM ruby:3.1.4

# Node.jsのインストール
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Yarnのインストール
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

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
