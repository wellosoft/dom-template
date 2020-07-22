mkdir public_html
cd public_html
django-admin startproject app .
echo "from app.wsgi import application" > passenger_wsgi.py
mkdir public
mkdir public/.well-known
