FROM octohost/go-1.2

RUN go get github.com/codegangsta/martini
RUN mkdir /srv/www/
RUN cd /srv/www/; curl https://raw.github.com/octohost/martini/master/hello.go -o hello.go

EXPOSE 3000

CMD cd /srv/www; go run hello.go
