FROM httpd:2.4.59

RUN apt-get update && apt-get install -y perl libcgi-pm-perl && rm -rf /var/lib/apt/lists/*

COPY ./htdocs/cgi-bin/ /usr/local/apache2/cgi-bin/

RUN chmod +x /usr/local/apache2/cgi-bin/*.cgi