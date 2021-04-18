FROM debian:buster

COPY	./srcs/init.sh .
COPY	./srcs/mytest.conf ./tmp/

CMD	bash init.sh && bash
