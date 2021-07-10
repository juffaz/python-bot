FROM python:3.9

WORKDIR /usr/src/app
COPY req.txt ./
RUN pip install --no-cache-dir -r req.txt
COPY . .
RUN chmod +x bot.py
RUN --mount=type=secret,id=TELETOK \
            ls /run/secrets/TELETOK
CMD [ "python", "bot.py" ]
