FROM 5hojib/aeon:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --ignore-installed --no-cache-dir -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
