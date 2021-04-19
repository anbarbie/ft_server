FROM debian:buster

COPY	./srcs/init.sh .
COPY	./srcs/mytest.conf ./tmp/
COPY	./srcs/config.inc.php ./tmp/
CMD	bash init.sh && bash
