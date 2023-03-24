FROM ubuntu:latest
RUN ["mkdir", "/app"]
COPY myfile.txt /app
COPY mydir/ /app/mydir
ADD https://github.com/amitopenwriteup/cicd/blob/master/date.sh /app/
COPY test.tar.gz /app/
RUN tar -xzf /app/test.tar.gz -C /app/
