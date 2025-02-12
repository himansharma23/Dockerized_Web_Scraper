FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install requests beautifulsoup4 mysql-connector-python

CMD ["python", "scraper.py"]
