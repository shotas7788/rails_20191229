FROM ruby:2.6.3


# RUN gem update --system
# RUN gem install bundler && gem update bundler
RUN apt-get update -qq && \
    apt-get install -y apt-utils \
                       build-essential \
                       libpq-dev \
                       nodejs \
                       default-mysql-client
# RUN apt-get update && apt-get install -y unzip && \
#     # CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
#     CHROME_DRIVER_VERSION=79.0.3945.36
#     wget -N http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P ~/ && \
#     unzip ~/chromedriver_linux64.zip -d ~/ && \
#     rm ~/chromedriver_linux64.zip && \
#     chown root:root ~/chromedriver && \
#     chmod 755 ~/chromedriver && \
#     mv ~/chromedriver /usr/bin/chromedriver && \
#     sh -c 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' && \
#     sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
#     apt-get update && apt-get install -y google-chrome-stable
RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install -j4
ADD . /app

EXPOSE 3000