FROM elft3r/jekyll:latest

COPY . /srv/jekyll/
RUN bundle install
RUN bundle install webrick

CMD [ "bundle", "exec", "jekyll", "serve", "-P", "4000", "-H", "0.0.0.0" ]
