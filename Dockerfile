FROM python:3.12.0b3-alpine3.18
WORKDIR /app
COPY . .
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "python3","-m","flask","run","--host=0.0.0.0" ]