FROM elft3r/jekyll:latest

COPY . /srv/jekyll/
RUN bundle install

CMD [ "bundle", "exec", "jekyll", "serve", "-P", "4000", "-H", "0.0.0.0" ]
