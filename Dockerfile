FROM python:3.9

WORKDIR /usr/src/app

COPY req.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x bot.py

CMD [ "python", "bot.py" ]

