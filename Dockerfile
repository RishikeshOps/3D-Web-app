FROM python:3.6-slim
WORKDIR /usr/src/app
COPY . .
RUN pip install -r requirements.txt
RUN pipenv install
EXPOSE 5000
CMD ["pipenv", "run", "python", "api.py"]