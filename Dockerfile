FROM lambci/lambda:build-python3.6

MAINTAINER "Jacques Kvam" <jacques@verdigris.co>

RUN pip install -U pip zappa

WORKDIR /var/task

CMD ["zappa"]
