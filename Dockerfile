# Use the official Python 3.13 slim-bookworm image as a base
FROM python:3.10


WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "Home.py"]