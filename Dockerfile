
FROM python:3-alpine

WORKDIR /app

COPY ./requirements.txt .
EXPOSE 4000
RUN pip install -r requirements.txt

COPY . .
CMD ["ash", "-c", "python CidrAPI.py"]