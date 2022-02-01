FROM elft3r/jekyll:latest

RUN apt -y install wget

COPY . /srv/jekyll/
RUN bundle install

CMD [ "bundle", "exec", "jekyll", "serve", "-P", "4000", "-H", "0.0.0.0" ]
