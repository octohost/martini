FROM octohost/go-1.2

RUN go get github.com/codegangsta/martini && go get github.com/codegangsta/martini-contrib/render
RUN mkdir /srv/www/
ADD . /srv/www

EXPOSE 3000

CMD cd /srv/www; go run hello.go
