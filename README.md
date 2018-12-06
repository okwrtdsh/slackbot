# slackbot [![](https://img.shields.io/docker/stars/okwrtdsh/slackbot.svg)![](https://img.shields.io/docker/pulls/okwrtdsh/slackbot.svg)![](https://img.shields.io/docker/automated/okwrtdsh/slackbot.svg)![](https://img.shields.io/docker/build/okwrtdsh/slackbot.svg)](https://hub.docker.com/r/okwrtdsh/slackbot/)

## Usage

### Generate the slack api token

First you need to get the slack api token for your bot. You have two options:

1. If you use a [bot user integration](https://api.slack.com/bot-users) of slack, you can get the api token on the integration page.
2. If you use a real slack user, you can generate an api token on [slack web api page](https://api.slack.com/web).

### Configure the api token

You need to configure the `API_TOKEN` in environment variable.

`docker-compose.yml`

```yaml
version: '3'
services:
  slackbot:
    image: okwrtdsh/slackbot:latest
    environment:
      - API_TOKEN="YOUR_API_TOKEN"
```

### Run the bot

```
docker-compose up -d
```

### Create Plugins

See the [slackbot's README](https://github.com/lins05/slackbot/blob/develop/README.md#create-plugins).

You just place your scripts in `/app/plugins`.

`docker-compose.yml`

```yaml
version: '3'
services:
  slackbot:
    image: okwrtdsh/slackbot:latest
    volumes:
      - ./example/hello.py:/app/plugins/hello.py
    environment:
      - API_TOKEN="YOUR_API_TOKEN"
```

If you need other libraries, you can use your requirements.txt.

`docker-compose.yml`

```yaml
version: '3'
services:
  slackbot:
    image: okwrtdsh/slackbot:latest
    volumes:
      - ./example/hello.py:/app/plugins/hello.py
      - ./requirements.txt:/requirements.txt
    environment:
      - API_TOKEN="YOUR_API_TOKEN"
```
