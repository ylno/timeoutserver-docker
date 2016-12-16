FROM perl:5.20

EXPOSE 8080
RUN cpanm install HTTP::Server::Simple
RUN git clone https://github.com/ylno/timeoutserver.git /timeoutserver

#COPY timeoutserver/timeoutserver.pl /timeoutserver.pl
WORKDIR /timeoutserver
CMD [ "perl", "timeoutserver.pl" ]

