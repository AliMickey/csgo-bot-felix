FROM python:slim
WORKDIR /usr/src/app
COPY . .

RUN pip install -r requirements.txt

CMD ["bot.py"]
ENTRYPOINT ["python3"]