FROM ubuntu:20.04

RUN apt update && apt install -y pip wget
RUN pip install urlextract

WORKDIR /root
COPY files/mirror-site.sh .
COPY files/create-sitemap.sh .
COPY files/ENTRYPOINT.sh .

ENTRYPOINT ["/root/ENTRYPOINT.sh"]
