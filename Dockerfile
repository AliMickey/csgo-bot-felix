FROM python:3.11.5-slim
WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y ffmpeg libopus0 && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt --no-cache-dir

#RUN pip install --force-reinstall https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz --no-cache-dir

CMD ["bot.py"]
ENTRYPOINT ["python3"]
