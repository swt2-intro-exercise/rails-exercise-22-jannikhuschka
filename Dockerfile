FROM ruby:2.7.4

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		sqlite3 \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /app
#COPY Gemfile* ./
#RUN bundle install
#COPY . .

#EXPOSE 3000
CMD ["tail", "-f", "/dev/null"]
