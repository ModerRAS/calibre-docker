FROM python:2-alpine3.9

RUN apk add --no-cache imagemagick && \
    wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | python2 -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

CMD ["calibre-server", "--with-library", "/calibre-library"]
