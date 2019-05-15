FROM jekyll/jekyll

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . ./

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
