# python-bot


docker build . -t python-bot <br>
docker run -it -d -e TELETOK="TELEGRAM_TOKEN" -e CHATID=CHAT_ID  --name python-bot juffaz/python-bot:latest1 <br>
