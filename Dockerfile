FROM nginx:latest
EXPOSE 8000

COPY . /usr/share/nginx/html

RUN pip install --no-cache-dir -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]