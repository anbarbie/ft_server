FROM debian:buster

COPY	./srcs/init.sh .
COPY	./srcs/mytest.conf ./tmp/
COPY	./srcs/config.inc.php ./tmp/
COPY	./srcs/wp-config.php ./tmp/
ENV	AUTOINDEX=on
CMD	bash init.sh && bash
