# Dockerized_Web_Scraper

This project demonstrates how to build a Dockerized web scraper using Python. The scraper extracts movie quotes from a website and stores the collected data in a MySQL database running in a separate Docker container. The setup ensures seamless container communication using a custom Docker bridge network.

🔹 Features:

Web Scraping with Python – Utilizes requests and BeautifulSoup for extracting data.
Dockerized MySQL Database – Stores the scraped quotes efficiently.

🛠️ Prerequisites:

Docker installed on your system.
Basic knowledge of Docker and Python.
Required Python Packages: requests, BeautifulSoup, mysql-connector-python.

⚙️ SQL Setup Commands:

1️⃣ Start a MySQL container:

bash
Copy
Edit
docker run -d --name mysql-container -e MYSQL_ROOT_PASSWORD=redhat -e MYSQL_DATABASE=scraper_db -p 3306:3306 mysql:latest

2️⃣ Access the MySQL container:

bash
Copy
Edit
docker exec -it mysql-container mysql -u root -predhat

3️⃣ Set up the database and table:

sql
Copy
Edit
USE scraper_db;

CREATE TABLE quotes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    text TEXT NOT NULL,
    author VARCHAR(255) NOT NULL
);

This setup ensures that the web scraper can fetch and store data efficiently while keeping the database isolated within a containerized environment. 🚀
