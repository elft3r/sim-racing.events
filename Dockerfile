FROM elft3r/jekyll:latest

RUN apt-get update \
    && apt-get -y install --no-install-recommends wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /srv/jekyll/
RUN bundle install

CMD [ "bundle", "exec", "jekyll", "serve", "-P", "4000", "-H", "0.0.0.0" ]
