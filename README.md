# zappa-docker

https://hub.docker.com/r/jwkvam/zappa-docker/

Provides a python 3.6 environment similar to the one AWS Lambda provides.
It's useful for creating virtualenvs and deploying with Zappa.

## Usage

### Build Docker
```
docker build -t zappa .
```

### Pull From Docker Hub
```
docker pull jwkvam/zappa-docker
```

### Create Alias
```
$ alias zappashell='docker run -ti -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION -v (pwd):/var/task --rm zappa bash'
```

### Running Docker
```
$ zappashell
zappashell> cd myproject
# Create a persistent virtualenv within the mounted volume and activate it
zappashell> virtualenv env
zappashell> source env/bin/activate
# Install your requirements
zappashell> pip install -r requirements.txt
# Deploy the thing
zappashell> zappa deploy
# Update the thing
zappashell> zappa update
```
