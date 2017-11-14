FROM lambci/lambda:build-python3.6

LABEL maintainer="jacques@verdigris.co"

# https://stackoverflow.com/questions/8156873/have-relative-path-in-bash-prompt
ENV PS1 'zappa@$(pwd | sed "s@^/var/task/\?@@")\$ '

RUN pip install -U pip zappa

WORKDIR /var/task

CMD ["zappa"]
